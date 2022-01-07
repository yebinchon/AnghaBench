
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_entry {int name; } ;
struct ref_dir {int nr; int sorted; struct ref_entry** entries; int alloc; } ;


 int ALLOC_GROW (struct ref_entry**,int,int ) ;
 scalar_t__ strcmp (int ,int ) ;

void add_entry_to_dir(struct ref_dir *dir, struct ref_entry *entry)
{
 ALLOC_GROW(dir->entries, dir->nr + 1, dir->alloc);
 dir->entries[dir->nr++] = entry;

 if (dir->nr == 1 ||
     (dir->nr == dir->sorted + 1 &&
      strcmp(dir->entries[dir->nr - 2]->name,
      dir->entries[dir->nr - 1]->name) < 0))
  dir->sorted = dir->nr;
}
