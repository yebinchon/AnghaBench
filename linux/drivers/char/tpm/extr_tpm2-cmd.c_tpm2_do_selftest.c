
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dummy; } ;
struct tpm_buf {int dummy; } ;


 int TPM2_CC_SELF_TEST ;
 int TPM2_RC_INITIALIZE ;
 int TPM2_RC_SUCCESS ;
 int TPM2_RC_TESTING ;
 int TPM2_ST_NO_SESSIONS ;
 int tpm_buf_append_u8 (struct tpm_buf*,int) ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 int tpm_buf_init (struct tpm_buf*,int ,int ) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int ,char*) ;

__attribute__((used)) static int tpm2_do_selftest(struct tpm_chip *chip)
{
 struct tpm_buf buf;
 int full;
 int rc;

 for (full = 0; full < 2; full++) {
  rc = tpm_buf_init(&buf, TPM2_ST_NO_SESSIONS, TPM2_CC_SELF_TEST);
  if (rc)
   return rc;

  tpm_buf_append_u8(&buf, full);
  rc = tpm_transmit_cmd(chip, &buf, 0,
          "attempting the self test");
  tpm_buf_destroy(&buf);

  if (rc == TPM2_RC_TESTING)
   rc = TPM2_RC_SUCCESS;
  if (rc == TPM2_RC_INITIALIZE || rc == TPM2_RC_SUCCESS)
   return rc;
 }

 return rc;
}
