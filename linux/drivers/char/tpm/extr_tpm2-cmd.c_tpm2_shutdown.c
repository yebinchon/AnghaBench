
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tpm_chip {int dummy; } ;
struct tpm_buf {int dummy; } ;


 int TPM2_CC_SHUTDOWN ;
 int TPM2_ST_NO_SESSIONS ;
 int tpm_buf_append_u16 (struct tpm_buf*,int ) ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 int tpm_buf_init (struct tpm_buf*,int ,int ) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int ,char*) ;

void tpm2_shutdown(struct tpm_chip *chip, u16 shutdown_type)
{
 struct tpm_buf buf;
 int rc;

 rc = tpm_buf_init(&buf, TPM2_ST_NO_SESSIONS, TPM2_CC_SHUTDOWN);
 if (rc)
  return;
 tpm_buf_append_u16(&buf, shutdown_type);
 tpm_transmit_cmd(chip, &buf, 0, "stopping the TPM");
 tpm_buf_destroy(&buf);
}
