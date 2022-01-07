
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solos_card {int fw_wq; int tlet; scalar_t__* atmdev; scalar_t__ config_regs; } ;
typedef int irqreturn_t ;


 scalar_t__ IRQ_CLEAR ;
 int IRQ_RETVAL (int) ;
 int iowrite32 (int ,scalar_t__) ;
 int tasklet_schedule (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t solos_irq(int irq, void *dev_id)
{
 struct solos_card *card = dev_id;
 int handled = 1;

 iowrite32(0, card->config_regs + IRQ_CLEAR);


 if (card->atmdev[0])
  tasklet_schedule(&card->tlet);
 else
  wake_up(&card->fw_wq);

 return IRQ_RETVAL(handled);
}
