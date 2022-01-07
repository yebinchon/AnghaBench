
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int machine_halt () ;

__attribute__((used)) static irqreturn_t nb0916_overheat_handler(int irq, void *dev_id)
{
 machine_halt();

 return IRQ_HANDLED;
}
