
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_tis_data {int irq_tested; int irq; } ;
struct tpm_chip {int flags; int dev; } ;


 int TPM_CHIP_FLAG_IRQ ;
 struct tpm_tis_data* dev_get_drvdata (int *) ;
 int disable_interrupts (struct tpm_chip*) ;
 int tpm_msleep (int) ;
 int tpm_tis_send_main (struct tpm_chip*,int *,size_t) ;

__attribute__((used)) static int tpm_tis_send(struct tpm_chip *chip, u8 *buf, size_t len)
{
 int rc, irq;
 struct tpm_tis_data *priv = dev_get_drvdata(&chip->dev);

 if (!(chip->flags & TPM_CHIP_FLAG_IRQ) || priv->irq_tested)
  return tpm_tis_send_main(chip, buf, len);


 irq = priv->irq;
 priv->irq = 0;
 chip->flags &= ~TPM_CHIP_FLAG_IRQ;
 rc = tpm_tis_send_main(chip, buf, len);
 priv->irq = irq;
 chip->flags |= TPM_CHIP_FLAG_IRQ;
 if (!priv->irq_tested)
  tpm_msleep(1);
 if (!priv->irq_tested)
  disable_interrupts(chip);
 priv->irq_tested = 1;
 return rc;
}
