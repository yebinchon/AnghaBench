
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_tis_data {int locality; } ;
struct tpm_chip {int dev; } ;


 int TPM_STS (int ) ;
 struct tpm_tis_data* dev_get_drvdata (int *) ;
 int tpm_tis_read8 (struct tpm_tis_data*,int ,int *) ;

__attribute__((used)) static u8 tpm_tis_status(struct tpm_chip *chip)
{
 struct tpm_tis_data *priv = dev_get_drvdata(&chip->dev);
 int rc;
 u8 status;

 rc = tpm_tis_read8(priv, TPM_STS(priv->locality), &status);
 if (rc < 0)
  return 0;

 return status;
}
