
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct TYPE_2__ {unsigned long addr; } ;
struct pt_regs {unsigned long int_parm_long; int int_code; TYPE_1__ psw; } ;


 scalar_t__ MACHINE_HAS_NX ;
 unsigned long PAGE_MASK ;
 int VM_EXEC ;
 int VM_FAULT_BADACCESS ;
 int VM_WRITE ;
 unsigned long __rewind_psw (TYPE_1__,int) ;
 int do_exception (struct pt_regs*,int) ;
 int do_fault_error (struct pt_regs*,int,int) ;
 int do_low_address (struct pt_regs*) ;
 scalar_t__ unlikely (int) ;

void do_protection_exception(struct pt_regs *regs)
{
 unsigned long trans_exc_code;
 int access;
 vm_fault_t fault;

 trans_exc_code = regs->int_parm_long;





 if (!(regs->int_code & 0x200))
  regs->psw.addr = __rewind_psw(regs->psw, regs->int_code >> 16);





 if (unlikely(!(trans_exc_code & 4))) {
  do_low_address(regs);
  return;
 }
 if (unlikely(MACHINE_HAS_NX && (trans_exc_code & 0x80))) {
  regs->int_parm_long = (trans_exc_code & ~PAGE_MASK) |
     (regs->psw.addr & PAGE_MASK);
  access = VM_EXEC;
  fault = VM_FAULT_BADACCESS;
 } else {
  access = VM_WRITE;
  fault = do_exception(regs, access);
 }
 if (unlikely(fault))
  do_fault_error(regs, access, fault);
}
