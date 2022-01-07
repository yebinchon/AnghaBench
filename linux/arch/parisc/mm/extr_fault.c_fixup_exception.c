
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* iaoq; int iir; scalar_t__* gr; } ;
struct exception_table_entry {int fixup; } ;


 int BUG_ON (int) ;
 scalar_t__ EFAULT ;
 scalar_t__ PSW_B ;
 scalar_t__ VM_READ ;
 scalar_t__ parisc_acctyp (int ,int) ;
 struct exception_table_entry* search_exception_tables (unsigned long) ;

int fixup_exception(struct pt_regs *regs)
{
 const struct exception_table_entry *fix;

 fix = search_exception_tables(regs->iaoq[0]);
 if (fix) {







  if (fix->fixup & 1) {
   regs->gr[8] = -EFAULT;


   if (parisc_acctyp(0, regs->iir) == VM_READ) {
    int treg = regs->iir & 0x1f;
    BUG_ON(treg == 0);
    regs->gr[treg] = 0;
   }
  }

  regs->iaoq[0] = (unsigned long)&fix->fixup + fix->fixup;
  regs->iaoq[0] &= ~3;







  regs->iaoq[1] = regs->iaoq[0] + 4;
  regs->gr[0] &= ~PSW_B;

  return 1;
 }

 return 0;
}
