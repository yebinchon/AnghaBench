
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ctrl_alt_del () ;

__attribute__((used)) static irqreturn_t fsg_power_handler(int irq, void *dev_id)
{



 ctrl_alt_del();

 return IRQ_HANDLED;
}
