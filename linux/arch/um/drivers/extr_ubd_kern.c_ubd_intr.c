
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ubd_handler () ;

__attribute__((used)) static irqreturn_t ubd_intr(int irq, void *dev)
{
 ubd_handler();
 return IRQ_HANDLED;
}
