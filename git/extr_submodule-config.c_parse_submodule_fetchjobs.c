
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die (int ) ;
 int git_config_int (char const*,char const*) ;

int parse_submodule_fetchjobs(const char *var, const char *value)
{
 int fetchjobs = git_config_int(var, value);
 if (fetchjobs < 0)
  die(_("negative values not allowed for submodule.fetchjobs"));
 return fetchjobs;
}
