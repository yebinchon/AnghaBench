
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;
struct st33zp24_dev {int irq; int read_queue; int intrs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct st33zp24_dev* dev_get_drvdata (int *) ;
 int disable_irq_nosync (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t tpm_ioserirq_handler(int irq, void *dev_id)
{
 struct tpm_chip *chip = dev_id;
 struct st33zp24_dev *tpm_dev = dev_get_drvdata(&chip->dev);

 tpm_dev->intrs++;
 wake_up_interruptible(&tpm_dev->read_queue);
 disable_irq_nosync(tpm_dev->irq);

 return IRQ_HANDLED;
}
