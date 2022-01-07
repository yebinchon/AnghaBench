
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_cmdname (int *,char const*,int ) ;
 int aliases ;
 int autocorrect ;
 int git_config_int (char const*,char const*) ;
 int git_default_config (char const*,char const*,void*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int git_unknown_cmd_config(const char *var, const char *value, void *cb)
{
 const char *p;

 if (!strcmp(var, "help.autocorrect"))
  autocorrect = git_config_int(var,value);

 if (skip_prefix(var, "alias.", &p))
  add_cmdname(&aliases, p, strlen(p));

 return git_default_config(var, value, cb);
}
