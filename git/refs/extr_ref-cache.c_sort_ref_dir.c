
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_entry {int dummy; } ;
struct ref_dir {int sorted; int nr; struct ref_entry** entries; } ;


 int QSORT (struct ref_entry**,int,int ) ;
 int free_ref_entry (struct ref_entry*) ;
 scalar_t__ is_dup_ref (struct ref_entry*,struct ref_entry*) ;
 int ref_entry_cmp ;

__attribute__((used)) static void sort_ref_dir(struct ref_dir *dir)
{
 int i, j;
 struct ref_entry *last = ((void*)0);





 if (dir->sorted == dir->nr)
  return;

 QSORT(dir->entries, dir->nr, ref_entry_cmp);


 for (i = 0, j = 0; j < dir->nr; j++) {
  struct ref_entry *entry = dir->entries[j];
  if (last && is_dup_ref(last, entry))
   free_ref_entry(entry);
  else
   last = dir->entries[i++] = entry;
 }
 dir->sorted = dir->nr = i;
}
