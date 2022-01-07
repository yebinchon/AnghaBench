
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
struct TYPE_2__ {int val80h; int val40h; } ;


 int REG_CSCDR ;
 int REG_CSCIR ;
 TYPE_1__* elan_multiplier ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int outb_p (int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int elanfreq_target(struct cpufreq_policy *policy,
       unsigned int state)
{
 local_irq_disable();
 outb_p(0x40, REG_CSCIR);
 outb_p(0x00, REG_CSCDR);
 local_irq_enable();
 udelay(1000);

 local_irq_disable();


 outb_p(0x80, REG_CSCIR);
 outb_p(elan_multiplier[state].val80h, REG_CSCDR);


 outb_p(0x40, REG_CSCIR);
 outb_p(elan_multiplier[state].val40h, REG_CSCDR);
 udelay(10000);
 local_irq_enable();

 return 0;
}
