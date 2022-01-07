
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* parsed_objects; } ;
struct object {int dummy; } ;
struct TYPE_2__ {int obj_hash_size; struct object** obj_hash; } ;


 int free (struct object**) ;
 int insert_obj_hash (struct object*,struct object**,int) ;
 struct object** xcalloc (int,int) ;

__attribute__((used)) static void grow_object_hash(struct repository *r)
{
 int i;




 int new_hash_size = r->parsed_objects->obj_hash_size < 32 ? 32 : 2 * r->parsed_objects->obj_hash_size;
 struct object **new_hash;

 new_hash = xcalloc(new_hash_size, sizeof(struct object *));
 for (i = 0; i < r->parsed_objects->obj_hash_size; i++) {
  struct object *obj = r->parsed_objects->obj_hash[i];

  if (!obj)
   continue;
  insert_obj_hash(obj, new_hash, new_hash_size);
 }
 free(r->parsed_objects->obj_hash);
 r->parsed_objects->obj_hash = new_hash;
 r->parsed_objects->obj_hash_size = new_hash_size;
}
