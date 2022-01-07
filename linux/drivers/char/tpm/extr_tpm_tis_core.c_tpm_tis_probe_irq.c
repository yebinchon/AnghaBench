
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tpm_tis_data {int locality; } ;
struct tpm_chip {int dev; } ;


 int CONFIG_X86 ;
 scalar_t__ IS_ENABLED (int ) ;
 int TPM_INT_VECTOR (int ) ;
 struct tpm_tis_data* dev_get_drvdata (int *) ;
 int tpm_tis_probe_irq_single (struct tpm_chip*,int ,int ,int) ;
 int tpm_tis_read8 (struct tpm_tis_data*,int ,int*) ;

__attribute__((used)) static void tpm_tis_probe_irq(struct tpm_chip *chip, u32 intmask)
{
 struct tpm_tis_data *priv = dev_get_drvdata(&chip->dev);
 u8 original_int_vec;
 int i, rc;

 rc = tpm_tis_read8(priv, TPM_INT_VECTOR(priv->locality),
      &original_int_vec);
 if (rc < 0)
  return;

 if (!original_int_vec) {
  if (IS_ENABLED(CONFIG_X86))
   for (i = 3; i <= 15; i++)
    if (!tpm_tis_probe_irq_single(chip, intmask, 0,
             i))
     return;
 } else if (!tpm_tis_probe_irq_single(chip, intmask, 0,
          original_int_vec))
  return;
}
