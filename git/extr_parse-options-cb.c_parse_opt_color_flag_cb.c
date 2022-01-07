
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ value; int long_name; scalar_t__ defval; } ;


 int _ (char*) ;
 int error (int ,int ) ;
 int git_config_colorbool (int *,char const*) ;

int parse_opt_color_flag_cb(const struct option *opt, const char *arg,
       int unset)
{
 int value;

 if (!arg)
  arg = unset ? "never" : (const char *)opt->defval;
 value = git_config_colorbool(((void*)0), arg);
 if (value < 0)
  return error(_("option `%s' expects \"always\", \"auto\", or \"never\""),
        opt->long_name);
 *(int *)opt->value = value;
 return 0;
}
