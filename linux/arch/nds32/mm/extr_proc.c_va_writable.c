
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef scalar_t__ pte_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 TYPE_1__* current ;
 scalar_t__ pte_kernel_write (scalar_t__) ;
 scalar_t__ pte_write (scalar_t__) ;
 scalar_t__ user_mode (struct pt_regs*) ;
 scalar_t__ va_kernel_present (unsigned long) ;
 scalar_t__ va_present (struct mm_struct*,unsigned long) ;

int va_writable(struct pt_regs *regs, unsigned long addr)
{
 struct mm_struct *mm = current->mm;
 pte_t pte;
 int ret = 0;

 if (user_mode(regs)) {

  pte = va_present(mm, addr);
  if (!pte && pte_write(pte))
   ret = 1;
 } else {

  pte = va_kernel_present(addr);
  if (!pte && pte_kernel_write(pte))
   ret = 1;
 }
 return ret;
}
