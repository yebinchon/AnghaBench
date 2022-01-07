
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {int flags; } ;


 int REMOTE ;
 struct object* lookup_object (int ,struct object_id const*) ;
 int object_list_contains (int ,struct object*) ;
 int object_list_insert (struct object*,int *) ;
 int objects ;
 struct object* parse_object (int ,struct object_id const*) ;
 int the_repository ;

__attribute__((used)) static void one_remote_object(const struct object_id *oid)
{
 struct object *obj;

 obj = lookup_object(the_repository, oid);
 if (!obj)
  obj = parse_object(the_repository, oid);


 if (!obj)
  return;

 obj->flags |= REMOTE;
 if (!object_list_contains(objects, obj))
  object_list_insert(obj, &objects);
}
