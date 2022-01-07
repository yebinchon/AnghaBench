
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;
struct tpm_buf {int dummy; } ;


 int TPM_ORD_STARTUP ;
 int TPM_ST_CLEAR ;
 int TPM_TAG_RQU_COMMAND ;
 int dev_info (int *,char*) ;
 int tpm_buf_append_u16 (struct tpm_buf*,int ) ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 int tpm_buf_init (struct tpm_buf*,int ,int ) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int ,char*) ;

__attribute__((used)) static int tpm1_startup(struct tpm_chip *chip)
{
 struct tpm_buf buf;
 int rc;

 dev_info(&chip->dev, "starting up the TPM manually\n");

 rc = tpm_buf_init(&buf, TPM_TAG_RQU_COMMAND, TPM_ORD_STARTUP);
 if (rc < 0)
  return rc;

 tpm_buf_append_u16(&buf, TPM_ST_CLEAR);

 rc = tpm_transmit_cmd(chip, &buf, 0, "attempting to start the TPM");
 tpm_buf_destroy(&buf);
 return rc;
}
