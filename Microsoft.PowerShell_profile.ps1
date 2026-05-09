[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Set-PSReadLineOption -Colors @{
    Command   = "#f9727c" 
    Parameter = "#cccccc" 
    String    = "#abb2bf" 
    Variable  = "#abb2bf" 
}

function prompt {
    $red   = "$([char]27)[38;2;249;114;124m"
    $gray  = "$([char]27)[38;2;204;204;204m"
    $reset = "$([char]27)[0m"

    Write-Host -NoNewline "$red ps "
    Write-Host -NoNewline "$gray$(Split-Path -Leaf $pwd)$reset"
    Write-Host -NoNewline "$red > $reset"
    
    return " "
}