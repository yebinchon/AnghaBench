
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int ENOENT ;
 int pr_info (char*,char*,int) ;
 unsigned long s3c_irqwake_intallow ;
 unsigned long s3c_irqwake_intmask ;

int s3c_irq_wake(struct irq_data *data, unsigned int state)
{
 unsigned long irqbit = 1 << data->hwirq;

 if (!(s3c_irqwake_intallow & irqbit))
  return -ENOENT;

 pr_info("wake %s for hwirq %lu\n",
  state ? "enabled" : "disabled", data->hwirq);

 if (!state)
  s3c_irqwake_intmask |= irqbit;
 else
  s3c_irqwake_intmask &= ~irqbit;

 return 0;
}
