
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int DBG_ACTIVE_EL1 ;
 int DBG_MDSCR_SS ;
 int WARN_ON (int) ;
 int enable_debug_monitors (int ) ;
 int irqs_disabled () ;
 int mdscr_read () ;
 int mdscr_write (int) ;
 int set_regs_spsr_ss (struct pt_regs*) ;

void kernel_enable_single_step(struct pt_regs *regs)
{
 WARN_ON(!irqs_disabled());
 set_regs_spsr_ss(regs);
 mdscr_write(mdscr_read() | DBG_MDSCR_SS);
 enable_debug_monitors(DBG_ACTIVE_EL1);
}
