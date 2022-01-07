
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object_context {int dummy; } ;


 int GET_OID_TREEISH ;
 int get_oid_with_context (struct repository*,char const*,int ,struct object_id*,struct object_context*) ;

int repo_get_oid_treeish(struct repository *r,
    const char *name,
    struct object_id *oid)
{
 struct object_context unused;
 return get_oid_with_context(r, name, GET_OID_TREEISH,
        oid, &unused);
}
