
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct decoration_entry {void* decoration; struct object const* base; } ;
struct decoration {int size; int nr; struct decoration_entry* entries; } ;


 unsigned int hash_obj (struct object const*,int) ;

__attribute__((used)) static void *insert_decoration(struct decoration *n, const struct object *base, void *decoration)
{
 int size = n->size;
 struct decoration_entry *entries = n->entries;
 unsigned int j = hash_obj(base, size);

 while (entries[j].base) {
  if (entries[j].base == base) {
   void *old = entries[j].decoration;
   entries[j].decoration = decoration;
   return old;
  }
  if (++j >= size)
   j = 0;
 }
 entries[j].base = base;
 entries[j].decoration = decoration;
 n->nr++;
 return ((void*)0);
}
