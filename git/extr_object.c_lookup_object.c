
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* parsed_objects; } ;
struct object_id {int dummy; } ;
struct object {int oid; } ;
struct TYPE_2__ {unsigned int obj_hash_size; struct object** obj_hash; } ;


 int SWAP (struct object*,struct object*) ;
 unsigned int hash_obj (struct object_id const*,unsigned int) ;
 scalar_t__ oideq (struct object_id const*,int *) ;

struct object *lookup_object(struct repository *r, const struct object_id *oid)
{
 unsigned int i, first;
 struct object *obj;

 if (!r->parsed_objects->obj_hash)
  return ((void*)0);

 first = i = hash_obj(oid, r->parsed_objects->obj_hash_size);
 while ((obj = r->parsed_objects->obj_hash[i]) != ((void*)0)) {
  if (oideq(oid, &obj->oid))
   break;
  i++;
  if (i == r->parsed_objects->obj_hash_size)
   i = 0;
 }
 if (obj && i != first) {





  SWAP(r->parsed_objects->obj_hash[i],
       r->parsed_objects->obj_hash[first]);
 }
 return obj;
}
