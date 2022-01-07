
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tpm_tis_data {scalar_t__ irq; int locality; } ;
struct TYPE_2__ {int parent; } ;
struct tpm_chip {int flags; TYPE_1__ dev; } ;


 int TPM_CHIP_FLAG_IRQ ;
 int TPM_GLOBAL_INT_ENABLE ;
 int TPM_INT_ENABLE (int ) ;
 struct tpm_tis_data* dev_get_drvdata (TYPE_1__*) ;
 int devm_free_irq (int ,scalar_t__,struct tpm_chip*) ;
 int tpm_tis_read32 (struct tpm_tis_data*,int ,int *) ;
 int tpm_tis_write32 (struct tpm_tis_data*,int ,int ) ;

__attribute__((used)) static void disable_interrupts(struct tpm_chip *chip)
{
 struct tpm_tis_data *priv = dev_get_drvdata(&chip->dev);
 u32 intmask;
 int rc;

 rc = tpm_tis_read32(priv, TPM_INT_ENABLE(priv->locality), &intmask);
 if (rc < 0)
  intmask = 0;

 intmask &= ~TPM_GLOBAL_INT_ENABLE;
 rc = tpm_tis_write32(priv, TPM_INT_ENABLE(priv->locality), intmask);

 devm_free_irq(chip->dev.parent, priv->irq, chip);
 priv->irq = 0;
 chip->flags &= ~TPM_CHIP_FLAG_IRQ;
}
