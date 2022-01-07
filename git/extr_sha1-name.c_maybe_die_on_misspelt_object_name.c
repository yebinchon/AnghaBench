
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object_context {int dummy; } ;


 int GET_OID_ONLY_TO_DIE ;
 int get_oid_with_context_1 (struct repository*,char const*,int ,char const*,struct object_id*,struct object_context*) ;

void maybe_die_on_misspelt_object_name(struct repository *r,
           const char *name,
           const char *prefix)
{
 struct object_context oc;
 struct object_id oid;
 get_oid_with_context_1(r, name, GET_OID_ONLY_TO_DIE,
          prefix, &oid, &oc);
}
