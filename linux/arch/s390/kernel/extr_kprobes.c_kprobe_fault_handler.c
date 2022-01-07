
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; } ;
struct pt_regs {TYPE_1__ psw; } ;


 int PSW_MASK_EXT ;
 int PSW_MASK_IO ;
 int PSW_MASK_PER ;
 int kprobe_trap_handler (struct pt_regs*,int) ;
 int local_irq_disable () ;
 int local_irq_restore (int) ;

int kprobe_fault_handler(struct pt_regs *regs, int trapnr)
{
 int ret;

 if (regs->psw.mask & (PSW_MASK_IO | PSW_MASK_EXT))
  local_irq_disable();
 ret = kprobe_trap_handler(regs, trapnr);
 if (regs->psw.mask & (PSW_MASK_IO | PSW_MASK_EXT))
  local_irq_restore(regs->psw.mask & ~PSW_MASK_PER);
 return ret;
}
