
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int type; } ;


 int OBJ_COMMIT ;
 int OBJ_TAG ;
 int OBJ_TREE ;
 struct object* deref_tag (struct repository*,int ,int *,int ) ;
 int oid_object_info (struct repository*,struct object_id const*,int *) ;
 int parse_object (struct repository*,struct object_id const*) ;

__attribute__((used)) static int disambiguate_treeish_only(struct repository *r,
         const struct object_id *oid,
         void *cb_data_unused)
{
 struct object *obj;
 int kind;

 kind = oid_object_info(r, oid, ((void*)0));
 if (kind == OBJ_TREE || kind == OBJ_COMMIT)
  return 1;
 if (kind != OBJ_TAG)
  return 0;


 obj = deref_tag(r, parse_object(r, oid), ((void*)0), 0);
 if (obj && (obj->type == OBJ_TREE || obj->type == OBJ_COMMIT))
  return 1;
 return 0;
}
