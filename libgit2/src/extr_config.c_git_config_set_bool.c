
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int git_config_set_string (int *,char const*,char*) ;

int git_config_set_bool(git_config *cfg, const char *name, int value)
{
 return git_config_set_string(cfg, name, value ? "true" : "false");
}
