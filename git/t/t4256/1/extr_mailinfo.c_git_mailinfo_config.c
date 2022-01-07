
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mailinfo {int use_scissors; } ;


 int git_config_bool (char const*,char const*) ;
 int git_default_config (char const*,char const*,int *) ;
 int starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int git_mailinfo_config(const char *var, const char *value, void *mi_)
{
 struct mailinfo *mi = mi_;

 if (!starts_with(var, "mailinfo."))
  return git_default_config(var, value, ((void*)0));
 if (!strcmp(var, "mailinfo.scissors")) {
  mi->use_scissors = git_config_bool(var, value);
  return 0;
 }

 return 0;
}
