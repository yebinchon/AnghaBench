
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int kstat_irqs_cpu (int,int ) ;
 int * led_pattern ;
 int sun3_leds (int ) ;

__attribute__((used)) static irqreturn_t sun3_int7(int irq, void *dev_id)
{
 unsigned int cnt;

 cnt = kstat_irqs_cpu(irq, 0);
 if (!(cnt % 2000))
  sun3_leds(led_pattern[cnt % 16000 / 2000]);
 return IRQ_HANDLED;
}
