
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_win32_path ;


 int _wchdir (int ) ;
 scalar_t__ git_win32_path_from_utf8 (int ,char const*) ;

int p_chdir(const char* path)
{
 git_win32_path buf;

 if (git_win32_path_from_utf8(buf, path) < 0)
  return -1;

 return _wchdir(buf);
}
