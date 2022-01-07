
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;
struct tpm_buf {int dummy; } ;


 int TPM2_CC_STARTUP ;
 int TPM2_ST_NO_SESSIONS ;
 int TPM2_SU_CLEAR ;
 int dev_info (int *,char*) ;
 int tpm_buf_append_u16 (struct tpm_buf*,int ) ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 int tpm_buf_init (struct tpm_buf*,int ,int ) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int ,char*) ;

__attribute__((used)) static int tpm2_startup(struct tpm_chip *chip)
{
 struct tpm_buf buf;
 int rc;

 dev_info(&chip->dev, "starting up the TPM manually\n");

 rc = tpm_buf_init(&buf, TPM2_ST_NO_SESSIONS, TPM2_CC_STARTUP);
 if (rc < 0)
  return rc;

 tpm_buf_append_u16(&buf, TPM2_SU_CLEAR);
 rc = tpm_transmit_cmd(chip, &buf, 0, "attempting to start the TPM");
 tpm_buf_destroy(&buf);

 return rc;
}
