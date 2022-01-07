
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int GIT_MKDIR_PATH ;
 int GIT_MKDIR_SKIP_LAST ;
 int GIT_MKDIR_VERIFY_DIR ;
 int git_futils_mkdir (char const*,int const,int) ;

int git_futils_mkpath2file(const char *file_path, const mode_t mode)
{
 return git_futils_mkdir(
  file_path, mode,
  GIT_MKDIR_PATH | GIT_MKDIR_SKIP_LAST | GIT_MKDIR_VERIFY_DIR);
}
