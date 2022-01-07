
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;
struct priv_data {int irq; int read_queue; int intrs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct priv_data* dev_get_drvdata (int *) ;
 int disable_irq_nosync (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t i2c_nuvoton_int_handler(int dummy, void *dev_id)
{
 struct tpm_chip *chip = dev_id;
 struct priv_data *priv = dev_get_drvdata(&chip->dev);

 priv->intrs++;
 wake_up(&priv->read_queue);
 disable_irq_nosync(priv->irq);
 return IRQ_HANDLED;
}
