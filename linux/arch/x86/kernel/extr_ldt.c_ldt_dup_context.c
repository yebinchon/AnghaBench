
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; struct ldt_struct* ldt; } ;
struct mm_struct {TYPE_1__ context; } ;
struct ldt_struct {int nr_entries; int entries; } ;


 int ENOMEM ;
 int LDT_ENTRY_SIZE ;
 struct ldt_struct* alloc_ldt_struct (int) ;
 int finalize_ldt_struct (struct ldt_struct*) ;
 int free_ldt_pgtables (struct mm_struct*) ;
 int free_ldt_struct (struct ldt_struct*) ;
 int map_ldt_struct (struct mm_struct*,struct ldt_struct*,int ) ;
 int memcpy (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ldt_dup_context(struct mm_struct *old_mm, struct mm_struct *mm)
{
 struct ldt_struct *new_ldt;
 int retval = 0;

 if (!old_mm)
  return 0;

 mutex_lock(&old_mm->context.lock);
 if (!old_mm->context.ldt)
  goto out_unlock;

 new_ldt = alloc_ldt_struct(old_mm->context.ldt->nr_entries);
 if (!new_ldt) {
  retval = -ENOMEM;
  goto out_unlock;
 }

 memcpy(new_ldt->entries, old_mm->context.ldt->entries,
        new_ldt->nr_entries * LDT_ENTRY_SIZE);
 finalize_ldt_struct(new_ldt);

 retval = map_ldt_struct(mm, new_ldt, 0);
 if (retval) {
  free_ldt_pgtables(mm);
  free_ldt_struct(new_ldt);
  goto out_unlock;
 }
 mm->context.ldt = new_ldt;

out_unlock:
 mutex_unlock(&old_mm->context.lock);
 return retval;
}
