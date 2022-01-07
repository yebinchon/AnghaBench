
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_bool (char const*,char const*) ;
 int ident_use_config_only ;
 int set_ident (char const*,char const*) ;
 int strcmp (char const*,char*) ;

int git_ident_config(const char *var, const char *value, void *data)
{
 if (!strcmp(var, "user.useconfigonly")) {
  ident_use_config_only = git_config_bool(var, value);
  return 0;
 }

 return set_ident(var, value);
}
