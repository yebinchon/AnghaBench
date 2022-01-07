
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int orderly_poweroff (int) ;

__attribute__((used)) static irqreturn_t power_handler(int irq, void *dev_id)
{
 orderly_poweroff(1);


 return IRQ_HANDLED;
}
