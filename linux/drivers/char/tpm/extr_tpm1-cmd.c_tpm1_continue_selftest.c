
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dummy; } ;
struct tpm_buf {int dummy; } ;


 int TPM_ORD_CONTINUE_SELFTEST ;
 int TPM_TAG_RQU_COMMAND ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 int tpm_buf_init (struct tpm_buf*,int ,int ) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int ,char*) ;

__attribute__((used)) static int tpm1_continue_selftest(struct tpm_chip *chip)
{
 struct tpm_buf buf;
 int rc;

 rc = tpm_buf_init(&buf, TPM_TAG_RQU_COMMAND, TPM_ORD_CONTINUE_SELFTEST);
 if (rc)
  return rc;

 rc = tpm_transmit_cmd(chip, &buf, 0, "continue selftest");
 tpm_buf_destroy(&buf);
 return rc;
}
