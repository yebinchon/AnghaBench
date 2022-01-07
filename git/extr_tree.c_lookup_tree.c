
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;


 int OBJ_TREE ;
 int alloc_tree_node (struct repository*) ;
 struct tree* create_object (struct repository*,struct object_id const*,int ) ;
 struct object* lookup_object (struct repository*,struct object_id const*) ;
 struct tree* object_as_type (struct repository*,struct object*,int ,int ) ;

struct tree *lookup_tree(struct repository *r, const struct object_id *oid)
{
 struct object *obj = lookup_object(r, oid);
 if (!obj)
  return create_object(r, oid, alloc_tree_node(r));
 return object_as_type(r, obj, OBJ_TREE, 0);
}
