
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int old_oid; int name; int symref; struct ref* next; } ;


 int oidcpy (int *,int *) ;
 int strcmp (int ,int ) ;

int resolve_remote_symref(struct ref *ref, struct ref *list)
{
 if (!ref->symref)
  return 0;
 for (; list; list = list->next)
  if (!strcmp(ref->symref, list->name)) {
   oidcpy(&ref->old_oid, &list->old_oid);
   return 0;
  }
 return 1;
}
