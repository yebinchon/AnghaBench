
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int GIT_ERROR_OS ;
 int git_error_set (int ,char*,char const*,char const*) ;
 scalar_t__ git_futils_mkpath2file (char const*,int const) ;
 scalar_t__ p_rename (char const*,char const*) ;

int git_futils_mv_withpath(const char *from, const char *to, const mode_t dirmode)
{
 if (git_futils_mkpath2file(to, dirmode) < 0)
  return -1;

 if (p_rename(from, to) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to rename '%s' to '%s'", from, to);
  return -1;
 }

 return 0;
}
