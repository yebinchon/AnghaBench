
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int old_oid; struct ref* next; } ;
struct object_id {int dummy; } ;


 int oidcpy (struct object_id*,int *) ;

__attribute__((used)) static int iterate_ref_map(void *cb_data, struct object_id *oid)
{
 struct ref **rm = cb_data;
 struct ref *ref = *rm;

 if (!ref)
  return -1;
 *rm = ref->next;
 oidcpy(oid, &ref->old_oid);
 return 0;
}
