
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int name; struct ref* next; } ;


 int strcmp (int ,char const*) ;

struct ref *find_ref_by_name(const struct ref *list, const char *name)
{
 for ( ; list; list = list->next)
  if (!strcmp(list->name, name))
   return (struct ref *)list;
 return ((void*)0);
}
