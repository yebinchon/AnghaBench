
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int transfer; int status; } ;


 int GDROM_STATUSCOMMAND_REG ;
 int IRQ_HANDLED ;
 int __raw_readb (int ) ;
 TYPE_1__ gd ;
 int request_queue ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t gdrom_dma_interrupt(int irq, void *dev_id)
{
 gd.status = __raw_readb(GDROM_STATUSCOMMAND_REG);
 if (gd.transfer != 1)
  return IRQ_HANDLED;
 gd.transfer = 0;
 wake_up_interruptible(&request_queue);
 return IRQ_HANDLED;
}
