
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;


 int OBJ_TAG ;
 int alloc_tag_node (struct repository*) ;
 struct tag* create_object (struct repository*,struct object_id const*,int ) ;
 struct object* lookup_object (struct repository*,struct object_id const*) ;
 struct tag* object_as_type (struct repository*,struct object*,int ,int ) ;

struct tag *lookup_tag(struct repository *r, const struct object_id *oid)
{
 struct object *obj = lookup_object(r, oid);
 if (!obj)
  return create_object(r, oid, alloc_tag_node(r));
 return object_as_type(r, obj, OBJ_TAG, 0);
}
