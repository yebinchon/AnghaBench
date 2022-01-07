
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;


 int ARM_DBG_READ (int ,int ,int ,int ) ;
 int ARM_DSCR_MOE (int ) ;



 int WARN (int,char*) ;
 int breakpoint_handler (unsigned long,struct pt_regs*) ;
 int c0 ;
 int c1 ;
 scalar_t__ interrupts_enabled (struct pt_regs*) ;
 int local_irq_enable () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int watchpoint_handler (unsigned long,unsigned int,struct pt_regs*) ;

__attribute__((used)) static int hw_breakpoint_pending(unsigned long addr, unsigned int fsr,
     struct pt_regs *regs)
{
 int ret = 0;
 u32 dscr;

 preempt_disable();

 if (interrupts_enabled(regs))
  local_irq_enable();


 ARM_DBG_READ(c0, c1, 0, dscr);


 switch (ARM_DSCR_MOE(dscr)) {
 case 129:
  breakpoint_handler(addr, regs);
  break;
 case 130:
  WARN(1, "Asynchronous watchpoint exception taken. Debugging results may be unreliable\n");

 case 128:
  watchpoint_handler(addr, fsr, regs);
  break;
 default:
  ret = 1;
 }

 preempt_enable();

 return ret;
}
