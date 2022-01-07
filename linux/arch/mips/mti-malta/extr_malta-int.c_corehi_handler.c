
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int corehi_irqdispatch () ;

__attribute__((used)) static irqreturn_t corehi_handler(int irq, void *dev_id)
{
 corehi_irqdispatch();
 return IRQ_HANDLED;
}
