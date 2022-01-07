
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int git_buf ;


 int win32_find_existing_dirs (int *,char const**) ;

int git_win32__find_xdg_dirs(git_buf *out)
{
 static const wchar_t *global_tmpls[7] = {
  L"%XDG_CONFIG_HOME%\\git",
  L"%APPDATA%\\git",
  L"%LOCALAPPDATA%\\git",
  L"%HOME%\\.config\\git",
  L"%HOMEDRIVE%%HOMEPATH%\\.config\\git",
  L"%USERPROFILE%\\.config\\git",
  ((void*)0),
 };

 return win32_find_existing_dirs(out, global_tmpls);
}
