
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_array_entry {int name; } ;
struct object_array {unsigned int nr; struct object_array_entry* objects; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static int contains_name(struct object_array *array, const char *name)
{
 unsigned nr = array->nr, i;
 struct object_array_entry *object = array->objects;

 for (i = 0; i < nr; i++, object++)
  if (!strcmp(object->name, name))
   return 1;
 return 0;
}
