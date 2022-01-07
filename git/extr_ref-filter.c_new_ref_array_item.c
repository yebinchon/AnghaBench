
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_array_item {int objectname; } ;
struct object_id {int dummy; } ;


 int FLEX_ALLOC_STR (struct ref_array_item*,char const*,char const*) ;
 int oidcpy (int *,struct object_id const*) ;

__attribute__((used)) static struct ref_array_item *new_ref_array_item(const char *refname,
       const struct object_id *oid)
{
 struct ref_array_item *ref;

 FLEX_ALLOC_STR(ref, refname, refname);
 oidcpy(&ref->objectname, oid);

 return ref;
}
