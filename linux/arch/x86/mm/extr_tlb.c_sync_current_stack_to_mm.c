
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;
typedef int p4d_t ;


 unsigned long current_stack_pointer ;
 int p4d_none (int ) ;
 int * p4d_offset (int *,unsigned long) ;
 int pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pgd_offset_k (unsigned long) ;
 scalar_t__ pgtable_l5_enabled () ;
 int set_p4d (int *,int ) ;
 int set_pgd (int *,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void sync_current_stack_to_mm(struct mm_struct *mm)
{
 unsigned long sp = current_stack_pointer;
 pgd_t *pgd = pgd_offset(mm, sp);

 if (pgtable_l5_enabled()) {
  if (unlikely(pgd_none(*pgd))) {
   pgd_t *pgd_ref = pgd_offset_k(sp);

   set_pgd(pgd, *pgd_ref);
  }
 } else {





  p4d_t *p4d = p4d_offset(pgd, sp);

  if (unlikely(p4d_none(*p4d))) {
   pgd_t *pgd_ref = pgd_offset_k(sp);
   p4d_t *p4d_ref = p4d_offset(pgd_ref, sp);

   set_p4d(p4d, *p4d_ref);
  }
 }
}
