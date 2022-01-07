
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* parsed_objects; } ;
struct TYPE_3__ {unsigned int obj_hash_size; } ;


 TYPE_2__* the_repository ;

unsigned int get_max_object_index(void)
{
 return the_repository->parsed_objects->obj_hash_size;
}
