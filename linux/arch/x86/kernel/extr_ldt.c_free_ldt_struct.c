
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldt_struct {int nr_entries; scalar_t__ entries; } ;


 int LDT_ENTRY_SIZE ;
 int PAGE_SIZE ;
 int free_page (unsigned long) ;
 int kfree (struct ldt_struct*) ;
 scalar_t__ likely (int) ;
 int paravirt_free_ldt (scalar_t__,int) ;
 int vfree_atomic (scalar_t__) ;

__attribute__((used)) static void free_ldt_struct(struct ldt_struct *ldt)
{
 if (likely(!ldt))
  return;

 paravirt_free_ldt(ldt->entries, ldt->nr_entries);
 if (ldt->nr_entries * LDT_ENTRY_SIZE > PAGE_SIZE)
  vfree_atomic(ldt->entries);
 else
  free_page((unsigned long)ldt->entries);
 kfree(ldt);
}
