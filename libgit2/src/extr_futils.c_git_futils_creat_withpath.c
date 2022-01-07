
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int GIT_ERROR_OS ;
 int git_error_set (int ,char*,char const*) ;
 scalar_t__ git_futils_mkpath2file (char const*,int const) ;
 int p_creat (char const*,int const) ;

int git_futils_creat_withpath(const char *path, const mode_t dirmode, const mode_t mode)
{
 int fd;

 if (git_futils_mkpath2file(path, dirmode) < 0)
  return -1;

 fd = p_creat(path, mode);
 if (fd < 0) {
  git_error_set(GIT_ERROR_OS, "failed to create file '%s'", path);
  return -1;
 }

 return fd;
}
