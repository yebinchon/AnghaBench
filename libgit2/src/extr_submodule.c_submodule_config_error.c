
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_INVALID ;
 int git_error_set (int ,char*,char const*,char const*) ;

__attribute__((used)) static int submodule_config_error(const char *property, const char *value)
{
 git_error_set(GIT_ERROR_INVALID,
  "invalid value for submodule '%s' property: '%s'", property, value);
 return -1;
}
