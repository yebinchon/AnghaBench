
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_MDSCR_SS ;
 int WARN_ON (int) ;
 int irqs_disabled () ;
 int mdscr_read () ;

int kernel_active_single_step(void)
{
 WARN_ON(!irqs_disabled());
 return mdscr_read() & DBG_MDSCR_SS;
}
