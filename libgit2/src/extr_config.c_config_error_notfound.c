
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_CONFIG ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static int config_error_notfound(const char *name)
{
 git_error_set(GIT_ERROR_CONFIG, "config value '%s' was not found", name);
 return GIT_ENOTFOUND;
}
