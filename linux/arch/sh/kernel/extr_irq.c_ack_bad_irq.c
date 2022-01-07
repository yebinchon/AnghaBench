
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int irq_err_count ;
 int printk (char*,unsigned int) ;

void ack_bad_irq(unsigned int irq)
{
 atomic_inc(&irq_err_count);
 printk("unexpected IRQ trap at vector %02x\n", irq);
}
