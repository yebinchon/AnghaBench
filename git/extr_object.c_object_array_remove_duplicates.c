
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_array_entry {int name; } ;
struct object_array {unsigned int nr; struct object_array_entry* objects; } ;


 int contains_name (struct object_array*,int ) ;
 int object_array_release_entry (struct object_array_entry*) ;

void object_array_remove_duplicates(struct object_array *array)
{
 unsigned nr = array->nr, src;
 struct object_array_entry *objects = array->objects;

 array->nr = 0;
 for (src = 0; src < nr; src++) {
  if (!contains_name(array, objects[src].name)) {
   if (src != array->nr)
    objects[array->nr] = objects[src];
   array->nr++;
  } else {
   object_array_release_entry(&objects[src]);
  }
 }
}
