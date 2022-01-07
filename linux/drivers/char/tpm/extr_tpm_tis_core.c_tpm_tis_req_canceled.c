
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_tis_data {int manufacturer_id; } ;
struct tpm_chip {int dev; } ;


 int TPM_STS_COMMAND_READY ;
 int TPM_STS_VALID ;


 struct tpm_tis_data* dev_get_drvdata (int *) ;

__attribute__((used)) static bool tpm_tis_req_canceled(struct tpm_chip *chip, u8 status)
{
 struct tpm_tis_data *priv = dev_get_drvdata(&chip->dev);

 switch (priv->manufacturer_id) {
 case 128:
  return ((status == TPM_STS_VALID) ||
   (status == (TPM_STS_VALID | TPM_STS_COMMAND_READY)));
 case 129:
  return (status == (TPM_STS_VALID | TPM_STS_COMMAND_READY));
 default:
  return (status == TPM_STS_COMMAND_READY);
 }
}
