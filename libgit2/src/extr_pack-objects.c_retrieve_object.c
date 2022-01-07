
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct walk_object {int id; } ;
struct TYPE_4__ {int walk_objects; } ;
typedef TYPE_1__ git_packbuilder ;
typedef int git_oid ;


 struct walk_object* git_oidmap_get (int ,int const*) ;
 int git_oidmap_set (int ,int *,struct walk_object*) ;
 int lookup_walk_object (struct walk_object**,TYPE_1__*,int const*) ;

__attribute__((used)) static int retrieve_object(struct walk_object **out, git_packbuilder *pb, const git_oid *id)
{
 struct walk_object *obj;
 int error;

 if ((obj = git_oidmap_get(pb->walk_objects, id)) == ((void*)0)) {
  if ((error = lookup_walk_object(&obj, pb, id)) < 0)
   return error;

  if ((error = git_oidmap_set(pb->walk_objects, &obj->id, obj)) < 0)
   return error;
 }

 *out = obj;
 return 0;
}
