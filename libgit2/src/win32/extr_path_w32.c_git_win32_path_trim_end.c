
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ git_win32__isalpha (int) ;

size_t git_win32_path_trim_end(wchar_t *str, size_t len)
{
 while (1) {
  if (!len || str[len - 1] != L'\\')
   break;





  if (len == 3 && git_win32__isalpha(str[0]) && str[1] == ':')
   break;

  len--;
 }

 str[len] = L'\0';

 return len;
}
