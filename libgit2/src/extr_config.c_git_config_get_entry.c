
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_entry ;
typedef int git_config ;


 int GET_ALL_ERRORS ;
 int get_entry (int **,int const*,char const*,int,int ) ;

int git_config_get_entry(
 git_config_entry **out, const git_config *cfg, const char *name)
{
 return get_entry(out, cfg, name, 1, GET_ALL_ERRORS);
}
