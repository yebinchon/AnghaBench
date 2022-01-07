
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct decoration_entry {void* decoration; struct object const* base; } ;
struct decoration {unsigned int size; struct decoration_entry* entries; } ;


 unsigned int hash_obj (struct object const*,unsigned int) ;

void *lookup_decoration(struct decoration *n, const struct object *obj)
{
 unsigned int j;


 if (!n->size)
  return ((void*)0);
 j = hash_obj(obj, n->size);
 for (;;) {
  struct decoration_entry *ref = n->entries + j;
  if (ref->base == obj)
   return ref->decoration;
  if (!ref->base)
   return ((void*)0);
  if (++j == n->size)
   j = 0;
 }
}
