
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int pending; int status; } ;


 int GDROM_STATUSCOMMAND_REG ;
 int IRQ_HANDLED ;
 int __raw_readb (int ) ;
 int command_queue ;
 TYPE_1__ gd ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t gdrom_command_interrupt(int irq, void *dev_id)
{
 gd.status = __raw_readb(GDROM_STATUSCOMMAND_REG);
 if (gd.pending != 1)
  return IRQ_HANDLED;
 gd.pending = 0;
 wake_up_interruptible(&command_queue);
 return IRQ_HANDLED;
}
