
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int WARN_ON_ONCE (unsigned long) ;
 unsigned long X86_PF_PK ;
 unsigned long X86_PF_PROT ;
 unsigned long X86_PF_RSVD ;
 unsigned long X86_PF_USER ;
 int X86_TRAP_PF ;
 int bad_area_nosemaphore (struct pt_regs*,unsigned long,unsigned long) ;
 scalar_t__ kprobe_page_fault (struct pt_regs*,int ) ;
 scalar_t__ spurious_kernel_fault (unsigned long,unsigned long) ;
 scalar_t__ vmalloc_fault (unsigned long) ;

__attribute__((used)) static void
do_kern_addr_fault(struct pt_regs *regs, unsigned long hw_error_code,
     unsigned long address)
{





 WARN_ON_ONCE(hw_error_code & X86_PF_PK);
 if (!(hw_error_code & (X86_PF_RSVD | X86_PF_USER | X86_PF_PROT))) {
  if (vmalloc_fault(address) >= 0)
   return;
 }


 if (spurious_kernel_fault(hw_error_code, address))
  return;


 if (kprobe_page_fault(regs, X86_TRAP_PF))
  return;
 bad_area_nosemaphore(regs, hw_error_code, address);
}
