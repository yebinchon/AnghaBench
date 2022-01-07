
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef scalar_t__ git_configmap_t ;
typedef int git_configmap ;


 scalar_t__ GIT_CONFIGMAP_TRUE ;
 int GIT_ERROR_SUBMODULE ;
 scalar_t__ git_config_lookup_map_enum (scalar_t__*,char const**,int *,size_t,int) ;
 int git_error_set (int ,char*,char const*) ;
 int write_var (int *,char const*,char const*,char const*) ;

__attribute__((used)) static int write_mapped_var(git_repository *repo, const char *name, git_configmap *maps, size_t nmaps, const char *var, int ival)
{
 git_configmap_t type;
 const char *val;

 if (git_config_lookup_map_enum(&type, &val, maps, nmaps, ival) < 0) {
  git_error_set(GIT_ERROR_SUBMODULE, "invalid value for %s", var);
  return -1;
 }

 if (type == GIT_CONFIGMAP_TRUE)
  val = "true";

 return write_var(repo, name, var, val);
}
