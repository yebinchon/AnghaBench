
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGSEGV ;
 int force_sig_info_fault (int ,int,unsigned long) ;
 int local_irq_enable () ;
 int no_context (struct pt_regs*,unsigned long,unsigned long) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static void
__bad_area_nosemaphore(struct pt_regs *regs, unsigned long error_code,
         unsigned long address, int si_code)
{

 if (user_mode(regs)) {



  local_irq_enable();

  force_sig_info_fault(SIGSEGV, si_code, address);

  return;
 }

 no_context(regs, error_code, address);
}
