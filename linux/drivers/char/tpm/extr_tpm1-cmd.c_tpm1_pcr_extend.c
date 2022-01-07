
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tpm_chip {int dummy; } ;
struct tpm_buf {int dummy; } ;


 int TPM_DIGEST_SIZE ;
 int TPM_ORD_PCR_EXTEND ;
 int TPM_TAG_RQU_COMMAND ;
 int tpm_buf_append (struct tpm_buf*,int const*,int ) ;
 int tpm_buf_append_u32 (struct tpm_buf*,int ) ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 int tpm_buf_init (struct tpm_buf*,int ,int ) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int ,char const*) ;

int tpm1_pcr_extend(struct tpm_chip *chip, u32 pcr_idx, const u8 *hash,
      const char *log_msg)
{
 struct tpm_buf buf;
 int rc;

 rc = tpm_buf_init(&buf, TPM_TAG_RQU_COMMAND, TPM_ORD_PCR_EXTEND);
 if (rc)
  return rc;

 tpm_buf_append_u32(&buf, pcr_idx);
 tpm_buf_append(&buf, hash, TPM_DIGEST_SIZE);

 rc = tpm_transmit_cmd(chip, &buf, TPM_DIGEST_SIZE, log_msg);
 tpm_buf_destroy(&buf);
 return rc;
}
