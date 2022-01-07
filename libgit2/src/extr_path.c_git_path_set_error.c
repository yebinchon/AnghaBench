
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EEXISTS ;
 int GIT_EINVALIDSPEC ;
 int GIT_ELOCKED ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_OS ;
 int git_error_set (int ,char*,char const*,...) ;

int git_path_set_error(int errno_value, const char *path, const char *action)
{
 switch (errno_value) {
 case 129:
 case 128:
  git_error_set(GIT_ERROR_OS, "could not find '%s' to %s", path, action);
  return GIT_ENOTFOUND;

 case 131:
 case 130:
  git_error_set(GIT_ERROR_OS, "invalid path for filesystem '%s'", path);
  return GIT_EINVALIDSPEC;

 case 132:
  git_error_set(GIT_ERROR_OS, "failed %s - '%s' already exists", action, path);
  return GIT_EEXISTS;

 case 133:
  git_error_set(GIT_ERROR_OS, "failed %s - '%s' is locked", action, path);
  return GIT_ELOCKED;

 default:
  git_error_set(GIT_ERROR_OS, "could not %s '%s'", action, path);
  return -1;
 }
}
