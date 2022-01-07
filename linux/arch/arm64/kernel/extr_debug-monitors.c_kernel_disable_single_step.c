
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_ACTIVE_EL1 ;
 int DBG_MDSCR_SS ;
 int WARN_ON (int) ;
 int disable_debug_monitors (int ) ;
 int irqs_disabled () ;
 int mdscr_read () ;
 int mdscr_write (int) ;

void kernel_disable_single_step(void)
{
 WARN_ON(!irqs_disabled());
 mdscr_write(mdscr_read() & ~DBG_MDSCR_SS);
 disable_debug_monitors(DBG_ACTIVE_EL1);
}
