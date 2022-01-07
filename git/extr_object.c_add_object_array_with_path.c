
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_array_entry {unsigned int mode; int * path; int * name; struct object* item; } ;
struct object_array {unsigned int nr; unsigned int alloc; struct object_array_entry* objects; } ;
struct object {int dummy; } ;


 int REALLOC_ARRAY (struct object_array_entry*,unsigned int) ;
 int * object_array_slopbuf ;
 void* xstrdup (char const*) ;

void add_object_array_with_path(struct object *obj, const char *name,
    struct object_array *array,
    unsigned mode, const char *path)
{
 unsigned nr = array->nr;
 unsigned alloc = array->alloc;
 struct object_array_entry *objects = array->objects;
 struct object_array_entry *entry;

 if (nr >= alloc) {
  alloc = (alloc + 32) * 2;
  REALLOC_ARRAY(objects, alloc);
  array->alloc = alloc;
  array->objects = objects;
 }
 entry = &objects[nr];
 entry->item = obj;
 if (!name)
  entry->name = ((void*)0);
 else if (!*name)

  entry->name = object_array_slopbuf;
 else
  entry->name = xstrdup(name);
 entry->mode = mode;
 if (path)
  entry->path = xstrdup(path);
 else
  entry->path = ((void*)0);
 array->nr = ++nr;
}
