
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_merge_driver {int recursive; int cmdline; int description; struct ll_merge_driver* next; int fn; int * name; } ;


 int default_ll_merge ;
 int error (char*,char const*) ;
 int git_config_string (int *,char const*,char const*) ;
 int ll_ext_merge ;
 struct ll_merge_driver* ll_user_merge ;
 struct ll_merge_driver** ll_user_merge_tail ;
 scalar_t__ parse_config_key (char const*,char*,char const**,int*,char const**) ;
 int strcmp (char const*,char const*) ;
 int strncmp (int *,char const*,int) ;
 struct ll_merge_driver* xcalloc (int,int) ;
 int * xmemdupz (char const*,int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static int read_merge_config(const char *var, const char *value, void *cb)
{
 struct ll_merge_driver *fn;
 const char *key, *name;
 int namelen;

 if (!strcmp(var, "merge.default"))
  return git_config_string(&default_ll_merge, var, value);






 if (parse_config_key(var, "merge", &name, &namelen, &key) < 0 || !name)
  return 0;





 for (fn = ll_user_merge; fn; fn = fn->next)
  if (!strncmp(fn->name, name, namelen) && !fn->name[namelen])
   break;
 if (!fn) {
  fn = xcalloc(1, sizeof(struct ll_merge_driver));
  fn->name = xmemdupz(name, namelen);
  fn->fn = ll_ext_merge;
  *ll_user_merge_tail = fn;
  ll_user_merge_tail = &(fn->next);
 }

 if (!strcmp("name", key))
  return git_config_string(&fn->description, var, value);

 if (!strcmp("driver", key)) {
  if (!value)
   return error("%s: lacks value", var);
  fn->cmdline = xstrdup(value);
  return 0;
 }

 if (!strcmp("recursive", key))
  return git_config_string(&fn->recursive, var, value);

 return 0;
}
