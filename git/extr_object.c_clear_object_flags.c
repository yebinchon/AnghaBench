
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object {unsigned int flags; } ;
struct TYPE_4__ {TYPE_1__* parsed_objects; } ;
struct TYPE_3__ {int obj_hash_size; struct object** obj_hash; } ;


 TYPE_2__* the_repository ;

void clear_object_flags(unsigned flags)
{
 int i;

 for (i=0; i < the_repository->parsed_objects->obj_hash_size; i++) {
  struct object *obj = the_repository->parsed_objects->obj_hash[i];
  if (obj)
   obj->flags &= ~flags;
 }
}
