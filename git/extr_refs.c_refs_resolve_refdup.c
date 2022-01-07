
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;


 char* refs_resolve_ref_unsafe (struct ref_store*,char const*,int,struct object_id*,int*) ;
 char* xstrdup_or_null (char const*) ;

char *refs_resolve_refdup(struct ref_store *refs,
     const char *refname, int resolve_flags,
     struct object_id *oid, int *flags)
{
 const char *result;

 result = refs_resolve_ref_unsafe(refs, refname, resolve_flags,
      oid, flags);
 return xstrdup_or_null(result);
}
