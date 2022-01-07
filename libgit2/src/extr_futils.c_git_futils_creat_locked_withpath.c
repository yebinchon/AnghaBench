
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int git_futils_creat_locked (char const*,int const) ;
 scalar_t__ git_futils_mkpath2file (char const*,int const) ;

int git_futils_creat_locked_withpath(const char *path, const mode_t dirmode, const mode_t mode)
{
 if (git_futils_mkpath2file(path, dirmode) < 0)
  return -1;

 return git_futils_creat_locked(path, mode);
}
