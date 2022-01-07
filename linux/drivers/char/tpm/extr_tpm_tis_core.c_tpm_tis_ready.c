
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_tis_data {int locality; } ;
struct tpm_chip {int dev; } ;


 int TPM_STS (int ) ;
 int TPM_STS_COMMAND_READY ;
 struct tpm_tis_data* dev_get_drvdata (int *) ;
 int tpm_tis_write8 (struct tpm_tis_data*,int ,int ) ;

__attribute__((used)) static void tpm_tis_ready(struct tpm_chip *chip)
{
 struct tpm_tis_data *priv = dev_get_drvdata(&chip->dev);


 tpm_tis_write8(priv, TPM_STS(priv->locality), TPM_STS_COMMAND_READY);
}
