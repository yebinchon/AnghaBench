
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct pt_regs {int dummy; } ;


 int BUG () ;
 int SIGKILL ;
 int SIGSEGV ;
 int VM_FAULT_HWPOISON ;
 int VM_FAULT_HWPOISON_LARGE ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SIGBUS ;
 int VM_FAULT_SIGSEGV ;
 int bad_area_nosemaphore (struct pt_regs*,unsigned long) ;
 int current ;
 int do_sigbus (struct pt_regs*,unsigned long,int) ;
 scalar_t__ fatal_signal_pending (int ) ;
 int pagefault_out_of_memory () ;
 int user_mode (struct pt_regs*) ;

__attribute__((used)) static int mm_fault_error(struct pt_regs *regs, unsigned long addr,
    vm_fault_t fault)
{




 if (fatal_signal_pending(current) && !user_mode(regs))
  return SIGKILL;


 if (fault & VM_FAULT_OOM) {




  if (!user_mode(regs))
   return SIGSEGV;
  pagefault_out_of_memory();
 } else {
  if (fault & (VM_FAULT_SIGBUS|VM_FAULT_HWPOISON|
        VM_FAULT_HWPOISON_LARGE))
   return do_sigbus(regs, addr, fault);
  else if (fault & VM_FAULT_SIGSEGV)
   return bad_area_nosemaphore(regs, addr);
  else
   BUG();
 }
 return 0;
}
