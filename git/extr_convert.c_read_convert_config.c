
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct convert_driver {int required; int process; int clean; int smudge; struct convert_driver* next; int * name; } ;


 int git_config_bool (char const*,char const*) ;
 int git_config_string (int *,char const*,char const*) ;
 scalar_t__ parse_config_key (char const*,char*,char const**,int*,char const**) ;
 int strcmp (char*,char const*) ;
 int strncmp (int *,char const*,int) ;
 struct convert_driver* user_convert ;
 struct convert_driver** user_convert_tail ;
 struct convert_driver* xcalloc (int,int) ;
 int * xmemdupz (char const*,int) ;

__attribute__((used)) static int read_convert_config(const char *var, const char *value, void *cb)
{
 const char *key, *name;
 int namelen;
 struct convert_driver *drv;





 if (parse_config_key(var, "filter", &name, &namelen, &key) < 0 || !name)
  return 0;
 for (drv = user_convert; drv; drv = drv->next)
  if (!strncmp(drv->name, name, namelen) && !drv->name[namelen])
   break;
 if (!drv) {
  drv = xcalloc(1, sizeof(struct convert_driver));
  drv->name = xmemdupz(name, namelen);
  *user_convert_tail = drv;
  user_convert_tail = &(drv->next);
 }
 if (!strcmp("smudge", key))
  return git_config_string(&drv->smudge, var, value);

 if (!strcmp("clean", key))
  return git_config_string(&drv->clean, var, value);

 if (!strcmp("process", key))
  return git_config_string(&drv->process, var, value);

 if (!strcmp("required", key)) {
  drv->required = git_config_bool(var, value);
  return 0;
 }

 return 0;
}
