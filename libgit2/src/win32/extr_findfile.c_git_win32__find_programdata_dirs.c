
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int git_buf ;


 int win32_find_existing_dirs (int *,char const**) ;

int git_win32__find_programdata_dirs(git_buf *out)
{
 static const wchar_t *programdata_tmpls[2] = {
  L"%PROGRAMDATA%\\Git",
  ((void*)0),
 };

 return win32_find_existing_dirs(out, programdata_tmpls);
}
