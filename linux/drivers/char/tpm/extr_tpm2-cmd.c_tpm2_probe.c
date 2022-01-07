
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_header {int tag; } ;
struct tpm_chip {int flags; } ;
struct tpm_buf {scalar_t__ data; } ;


 int TPM2_CAP_TPM_PROPERTIES ;
 int TPM2_CC_GET_CAPABILITY ;
 scalar_t__ TPM2_ST_NO_SESSIONS ;
 int TPM_CHIP_FLAG_TPM2 ;
 int TPM_PT_TOTAL_COMMANDS ;
 scalar_t__ be16_to_cpu (int ) ;
 int tpm_buf_append_u32 (struct tpm_buf*,int) ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 int tpm_buf_init (struct tpm_buf*,scalar_t__,int ) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int ,int *) ;

int tpm2_probe(struct tpm_chip *chip)
{
 struct tpm_header *out;
 struct tpm_buf buf;
 int rc;

 rc = tpm_buf_init(&buf, TPM2_ST_NO_SESSIONS, TPM2_CC_GET_CAPABILITY);
 if (rc)
  return rc;
 tpm_buf_append_u32(&buf, TPM2_CAP_TPM_PROPERTIES);
 tpm_buf_append_u32(&buf, TPM_PT_TOTAL_COMMANDS);
 tpm_buf_append_u32(&buf, 1);
 rc = tpm_transmit_cmd(chip, &buf, 0, ((void*)0));

 if (rc >= 0) {
  out = (struct tpm_header *)buf.data;
  if (be16_to_cpu(out->tag) == TPM2_ST_NO_SESSIONS)
   chip->flags |= TPM_CHIP_FLAG_TPM2;
 }
 tpm_buf_destroy(&buf);
 return 0;
}
