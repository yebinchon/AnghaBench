
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct spinlock {int dummy; } ;


 scalar_t__ radix_enabled () ;
 scalar_t__ vma_is_anonymous (struct vm_area_struct*) ;

int pmd_move_must_withdraw(struct spinlock *new_pmd_ptl,
      struct spinlock *old_pmd_ptl,
      struct vm_area_struct *vma)
{
 if (radix_enabled())
  return (new_pmd_ptl != old_pmd_ptl) && vma_is_anonymous(vma);

 return 1;
}
