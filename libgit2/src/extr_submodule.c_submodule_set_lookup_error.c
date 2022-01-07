
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_SUBMODULE ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static void submodule_set_lookup_error(int error, const char *name)
{
 if (!error)
  return;

 git_error_set(GIT_ERROR_SUBMODULE, (error == GIT_ENOTFOUND) ?
  "no submodule named '%s'" :
  "submodule '%s' has not been added yet", name);
}
