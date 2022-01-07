
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {int dummy; } ;


 int alloc_object_node (int ) ;
 struct object* create_object (int ,struct object_id const*,int ) ;
 struct object* lookup_object (int ,struct object_id const*) ;
 int the_repository ;

struct object *lookup_unknown_object(const struct object_id *oid)
{
 struct object *obj = lookup_object(the_repository, oid);
 if (!obj)
  obj = create_object(the_repository, oid,
        alloc_object_node(the_repository));
 return obj;
}
