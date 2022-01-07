
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int git_win32_path ;


 int WIN32_MODE_MASK ;
 int _waccess (int ,int) ;
 scalar_t__ git_win32_path_from_utf8 (int ,char const*) ;

int p_access(const char* path, mode_t mode)
{
 git_win32_path buf;

 if (git_win32_path_from_utf8(buf, path) < 0)
  return -1;

 return _waccess(buf, mode & WIN32_MODE_MASK);
}
