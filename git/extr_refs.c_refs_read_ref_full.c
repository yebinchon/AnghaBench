
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;


 scalar_t__ refs_resolve_ref_unsafe (struct ref_store*,char const*,int,struct object_id*,int*) ;

int refs_read_ref_full(struct ref_store *refs, const char *refname,
         int resolve_flags, struct object_id *oid, int *flags)
{
 if (refs_resolve_ref_unsafe(refs, refname, resolve_flags, oid, flags))
  return 0;
 return -1;
}
