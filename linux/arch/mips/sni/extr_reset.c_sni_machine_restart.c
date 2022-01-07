
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kb_wait () ;
 int local_irq_disable () ;
 int outb_p (int,int) ;
 int udelay (int) ;

void sni_machine_restart(char *command)
{
 int i;



 local_irq_disable();
 for (;;) {
  for (i = 0; i < 100; i++) {
   kb_wait();
   udelay(50);
   outb_p(0xfe, 0x64);
   udelay(50);
  }
 }
}
