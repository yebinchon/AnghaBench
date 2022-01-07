
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned long ITYPE_mskETYPE ;
 unsigned long ITYPE_mskINST ;
 int do_page_fault (unsigned long,unsigned long,unsigned long,struct pt_regs*) ;
 int unhandled_exceptions (unsigned long,unsigned long,unsigned long,struct pt_regs*) ;

void do_dispatch_tlb_misc(unsigned long entry, unsigned long addr,
     unsigned long type, struct pt_regs *regs)
{
 type = type & (ITYPE_mskINST | ITYPE_mskETYPE);
 if ((type & ITYPE_mskETYPE) < 5) {

  do_page_fault(entry, addr, type, regs);
 } else
  unhandled_exceptions(entry, addr, type, regs);
}
