
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int REG_CSCDR ;
 int REG_CSCIR ;
 int inb_p (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int outb_p (int,int ) ;

__attribute__((used)) static unsigned int elanfreq_get_cpu_frequency(unsigned int cpu)
{
 u8 clockspeed_reg;

 local_irq_disable();
 outb_p(0x80, REG_CSCIR);
 clockspeed_reg = inb_p(REG_CSCDR);
 local_irq_enable();

 if ((clockspeed_reg & 0xE0) == 0xE0)
  return 0;


 if ((clockspeed_reg & 0xE0) == 0xC0) {
  if ((clockspeed_reg & 0x01) == 0)
   return 66000;
  else
   return 99000;
 }


 if ((clockspeed_reg & 0xE0) == 0xA0)
  return 33000;

 return (1<<((clockspeed_reg & 0xE0) >> 5)) * 1000;
}
