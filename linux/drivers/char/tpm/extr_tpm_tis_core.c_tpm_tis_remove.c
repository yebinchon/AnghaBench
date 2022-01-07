
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpm_tis_data {scalar_t__ ilb_base_addr; int locality; } ;
struct tpm_chip {int dev; } ;


 int TPM_GLOBAL_INT_ENABLE ;
 int TPM_INT_ENABLE (int ) ;
 struct tpm_tis_data* dev_get_drvdata (int *) ;
 int iounmap (scalar_t__) ;
 int tpm_tis_clkrun_enable (struct tpm_chip*,int) ;
 int tpm_tis_read32 (struct tpm_tis_data*,int,int*) ;
 int tpm_tis_write32 (struct tpm_tis_data*,int,int) ;

void tpm_tis_remove(struct tpm_chip *chip)
{
 struct tpm_tis_data *priv = dev_get_drvdata(&chip->dev);
 u32 reg = TPM_INT_ENABLE(priv->locality);
 u32 interrupt;
 int rc;

 tpm_tis_clkrun_enable(chip, 1);

 rc = tpm_tis_read32(priv, reg, &interrupt);
 if (rc < 0)
  interrupt = 0;

 tpm_tis_write32(priv, reg, ~TPM_GLOBAL_INT_ENABLE & interrupt);

 tpm_tis_clkrun_enable(chip, 0);

 if (priv->ilb_base_addr)
  iounmap(priv->ilb_base_addr);
}
