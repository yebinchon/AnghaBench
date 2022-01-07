
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpm_chip {int dev; } ;
struct tpm_buf {int dummy; } ;


 int TPM2_CC_FLUSH_CONTEXT ;
 int TPM2_ST_NO_SESSIONS ;
 int dev_warn (int *,char*,int ) ;
 int tpm_buf_append_u32 (struct tpm_buf*,int ) ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 int tpm_buf_init (struct tpm_buf*,int ,int ) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int ,char*) ;

void tpm2_flush_context(struct tpm_chip *chip, u32 handle)
{
 struct tpm_buf buf;
 int rc;

 rc = tpm_buf_init(&buf, TPM2_ST_NO_SESSIONS, TPM2_CC_FLUSH_CONTEXT);
 if (rc) {
  dev_warn(&chip->dev, "0x%08x was not flushed, out of memory\n",
    handle);
  return;
 }

 tpm_buf_append_u32(&buf, handle);

 tpm_transmit_cmd(chip, &buf, 0, "flushing context");
 tpm_buf_destroy(&buf);
}
