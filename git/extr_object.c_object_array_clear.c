
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_array {int nr; int alloc; int * objects; } ;


 int FREE_AND_NULL (int *) ;
 int object_array_release_entry (int *) ;

void object_array_clear(struct object_array *array)
{
 int i;
 for (i = 0; i < array->nr; i++)
  object_array_release_entry(&array->objects[i]);
 FREE_AND_NULL(array->objects);
 array->nr = array->alloc = 0;
}
