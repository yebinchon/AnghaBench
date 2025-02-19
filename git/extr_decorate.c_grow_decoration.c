
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct decoration_entry {void* decoration; struct object* base; } ;
struct decoration {int size; scalar_t__ nr; struct decoration_entry* entries; } ;


 int free (struct decoration_entry*) ;
 int insert_decoration (struct decoration*,struct object const*,void*) ;
 struct decoration_entry* xcalloc (int,int) ;

__attribute__((used)) static void grow_decoration(struct decoration *n)
{
 int i;
 int old_size = n->size;
 struct decoration_entry *old_entries = n->entries;

 n->size = (old_size + 1000) * 3 / 2;
 n->entries = xcalloc(n->size, sizeof(struct decoration_entry));
 n->nr = 0;

 for (i = 0; i < old_size; i++) {
  const struct object *base = old_entries[i].base;
  void *decoration = old_entries[i].decoration;

  if (!decoration)
   continue;
  insert_decoration(n, base, decoration);
 }
 free(old_entries);
}
