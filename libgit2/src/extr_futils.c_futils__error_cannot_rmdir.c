
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_OS ;
 int git_error_set (int ,char*,char const*,...) ;

__attribute__((used)) static int futils__error_cannot_rmdir(const char *path, const char *filemsg)
{
 if (filemsg)
  git_error_set(GIT_ERROR_OS, "could not remove directory '%s': %s",
       path, filemsg);
 else
  git_error_set(GIT_ERROR_OS, "could not remove directory '%s'", path);

 return -1;
}
