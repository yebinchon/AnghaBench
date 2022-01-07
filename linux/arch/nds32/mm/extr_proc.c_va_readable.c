
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 TYPE_1__* current ;
 scalar_t__ pte_read (int ) ;
 scalar_t__ user_mode (struct pt_regs*) ;
 int va_kernel_present (unsigned long) ;
 int va_present (struct mm_struct*,unsigned long) ;

int va_readable(struct pt_regs *regs, unsigned long addr)
{
 struct mm_struct *mm = current->mm;
 pte_t pte;
 int ret = 0;

 if (user_mode(regs)) {

  pte = va_present(mm, addr);
  if (!pte && pte_read(pte))
   ret = 1;
 } else {


  return (! !va_kernel_present(addr));
 }
 return ret;
}
