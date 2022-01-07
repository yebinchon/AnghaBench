
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;


 struct ref_store* get_submodule_ref_store (char const*) ;
 scalar_t__ is_null_oid (struct object_id*) ;
 int refs_resolve_ref_unsafe (struct ref_store*,char const*,int ,struct object_id*,int*) ;

int resolve_gitlink_ref(const char *submodule, const char *refname,
   struct object_id *oid)
{
 struct ref_store *refs;
 int flags;

 refs = get_submodule_ref_store(submodule);

 if (!refs)
  return -1;

 if (!refs_resolve_ref_unsafe(refs, refname, 0, oid, &flags) ||
     is_null_oid(oid))
  return -1;
 return 0;
}
