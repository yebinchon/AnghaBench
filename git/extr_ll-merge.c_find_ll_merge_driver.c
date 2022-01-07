
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct ll_merge_driver {int name; struct ll_merge_driver const* next; } const ll_merge_driver ;


 int ARRAY_SIZE (struct ll_merge_driver const*) ;
 scalar_t__ ATTR_FALSE (char const*) ;
 scalar_t__ ATTR_TRUE (char const*) ;
 scalar_t__ ATTR_UNSET (char const*) ;
 size_t LL_BINARY_MERGE ;
 size_t LL_TEXT_MERGE ;
 char* default_ll_merge ;
 int initialize_ll_merge () ;
 struct ll_merge_driver const* ll_merge_drv ;
 struct ll_merge_driver const* ll_user_merge ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static const struct ll_merge_driver *find_ll_merge_driver(const char *merge_attr)
{
 struct ll_merge_driver *fn;
 const char *name;
 int i;

 initialize_ll_merge();

 if (ATTR_TRUE(merge_attr))
  return &ll_merge_drv[LL_TEXT_MERGE];
 else if (ATTR_FALSE(merge_attr))
  return &ll_merge_drv[LL_BINARY_MERGE];
 else if (ATTR_UNSET(merge_attr)) {
  if (!default_ll_merge)
   return &ll_merge_drv[LL_TEXT_MERGE];
  else
   name = default_ll_merge;
 }
 else
  name = merge_attr;

 for (fn = ll_user_merge; fn; fn = fn->next)
  if (!strcmp(fn->name, name))
   return fn;

 for (i = 0; i < ARRAY_SIZE(ll_merge_drv); i++)
  if (!strcmp(ll_merge_drv[i].name, name))
   return &ll_merge_drv[i];


 return &ll_merge_drv[LL_TEXT_MERGE];
}
