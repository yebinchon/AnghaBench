
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int exact_oid; struct ref* next; int old_oid; } ;
struct object_id {int dummy; } ;


 struct ref* alloc_ref (int ) ;
 int fetch_refs (char const*,struct ref*) ;
 int oid_to_hex (struct object_id const*) ;
 int oidcpy (int *,struct object_id const*) ;

__attribute__((used)) static int fetch_objects(const char *remote_name,
    const struct object_id *oids,
    int oid_nr)
{
 struct ref *ref = ((void*)0);
 int i;

 for (i = 0; i < oid_nr; i++) {
  struct ref *new_ref = alloc_ref(oid_to_hex(&oids[i]));
  oidcpy(&new_ref->old_oid, &oids[i]);
  new_ref->exact_oid = 1;
  new_ref->next = ref;
  ref = new_ref;
 }
 return fetch_refs(remote_name, ref);
}
