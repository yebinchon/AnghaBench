
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int printk (char*) ;

__attribute__((used)) static irqreturn_t eraseconfig_interrupt(int irq, void *dev_id)
{
 printk("SnapGear: erase switch interrupt!\n");

 return IRQ_HANDLED;
}
