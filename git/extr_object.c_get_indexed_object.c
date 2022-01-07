
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parsed_objects; } ;
struct TYPE_3__ {struct object** obj_hash; } ;


 TYPE_2__* the_repository ;

struct object *get_indexed_object(unsigned int idx)
{
 return the_repository->parsed_objects->obj_hash[idx];
}
