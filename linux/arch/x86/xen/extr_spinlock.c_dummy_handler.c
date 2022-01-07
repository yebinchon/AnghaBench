
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int BUG () ;
 int IRQ_HANDLED ;

__attribute__((used)) static irqreturn_t dummy_handler(int irq, void *dev_id)
{
 BUG();
 return IRQ_HANDLED;
}
