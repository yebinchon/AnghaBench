
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userdiff_driver {int binary; int word_regex; int textconv_want_cache; int textconv; int external; int funcname; int name; } ;


 int ALLOC_GROW (struct userdiff_driver*,scalar_t__,int ) ;
 int REG_EXTENDED ;
 struct userdiff_driver* drivers ;
 int drivers_alloc ;
 int git_config_string (int *,char const*,char const*) ;
 int memset (struct userdiff_driver*,int ,int) ;
 scalar_t__ ndrivers ;
 int parse_bool (int *,char const*,char const*) ;
 scalar_t__ parse_config_key (char const*,char*,char const**,int*,char const**) ;
 int parse_funcname (int *,char const*,char const*,int ) ;
 int parse_tristate (int*,char const*,char const*) ;
 int strcmp (char const*,char*) ;
 struct userdiff_driver* userdiff_find_by_namelen (char const*,int) ;
 int xmemdupz (char const*,int) ;

int userdiff_config(const char *k, const char *v)
{
 struct userdiff_driver *drv;
 const char *name, *type;
 int namelen;

 if (parse_config_key(k, "diff", &name, &namelen, &type) || !name)
  return 0;

 drv = userdiff_find_by_namelen(name, namelen);
 if (!drv) {
  ALLOC_GROW(drivers, ndrivers+1, drivers_alloc);
  drv = &drivers[ndrivers++];
  memset(drv, 0, sizeof(*drv));
  drv->name = xmemdupz(name, namelen);
  drv->binary = -1;
 }

 if (!strcmp(type, "funcname"))
  return parse_funcname(&drv->funcname, k, v, 0);
 if (!strcmp(type, "xfuncname"))
  return parse_funcname(&drv->funcname, k, v, REG_EXTENDED);
 if (!strcmp(type, "binary"))
  return parse_tristate(&drv->binary, k, v);
 if (!strcmp(type, "command"))
  return git_config_string(&drv->external, k, v);
 if (!strcmp(type, "textconv"))
  return git_config_string(&drv->textconv, k, v);
 if (!strcmp(type, "cachetextconv"))
  return parse_bool(&drv->textconv_want_cache, k, v);
 if (!strcmp(type, "wordregex"))
  return git_config_string(&drv->word_regex, k, v);

 return 0;
}
