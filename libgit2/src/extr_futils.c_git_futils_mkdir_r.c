
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int GIT_MKDIR_PATH ;
 int git_futils_mkdir (char const*,int const,int ) ;

int git_futils_mkdir_r(const char *path, const mode_t mode)
{
 return git_futils_mkdir(path, mode, GIT_MKDIR_PATH);
}
