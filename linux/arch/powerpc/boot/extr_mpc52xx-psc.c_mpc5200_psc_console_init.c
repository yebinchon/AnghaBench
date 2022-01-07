
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_console_data {int tstc; int getc; int putc; int open; } ;


 int dt_get_virtual_reg (void*,int *,int) ;
 int psc ;
 int psc_getc ;
 int psc_open ;
 int psc_putc ;
 int psc_tstc ;

int mpc5200_psc_console_init(void *devp, struct serial_console_data *scdp)
{

 if (dt_get_virtual_reg(devp, &psc, 1) < 1)
  return -1;

 scdp->open = psc_open;
 scdp->putc = psc_putc;
 scdp->getc = psc_getc;
 scdp->tstc = psc_tstc;

 return 0;
}
