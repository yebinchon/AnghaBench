
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct pt_regs {int dummy; } ;


 int VM_EXEC ;
 int VM_READ ;
 int VM_WRITE ;
 int do_exception (struct pt_regs*,int) ;
 int do_fault_error (struct pt_regs*,int,int ) ;
 scalar_t__ unlikely (int ) ;

void do_dat_exception(struct pt_regs *regs)
{
 int access;
 vm_fault_t fault;

 access = VM_READ | VM_EXEC | VM_WRITE;
 fault = do_exception(regs, access);
 if (unlikely(fault))
  do_fault_error(regs, access, fault);
}
