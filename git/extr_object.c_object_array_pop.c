
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_array {int nr; TYPE_1__* objects; } ;
struct object {int dummy; } ;
struct TYPE_2__ {struct object* item; } ;


 int object_array_release_entry (TYPE_1__*) ;

struct object *object_array_pop(struct object_array *array)
{
 struct object *ret;

 if (!array->nr)
  return ((void*)0);

 ret = array->objects[array->nr - 1].item;
 object_array_release_entry(&array->objects[array->nr - 1]);
 array->nr--;
 return ret;
}
