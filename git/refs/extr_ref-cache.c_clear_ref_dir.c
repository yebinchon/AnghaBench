
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_dir {int nr; int sorted; int alloc; int * entries; } ;


 int FREE_AND_NULL (int *) ;
 int free_ref_entry (int ) ;

__attribute__((used)) static void clear_ref_dir(struct ref_dir *dir)
{
 int i;
 for (i = 0; i < dir->nr; i++)
  free_ref_entry(dir->entries[i]);
 FREE_AND_NULL(dir->entries);
 dir->sorted = dir->nr = dir->alloc = 0;
}
