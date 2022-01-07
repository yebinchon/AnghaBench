
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trusted_key_payload {int blob_len; int * blob; } ;
struct trusted_key_options {int keyauth; int keyhandle; } ;
struct tpm_chip {int dummy; } ;
struct tpm_buf {int flags; int * data; } ;
typedef int __be32 ;
typedef int __be16 ;


 int E2BIG ;
 int EPERM ;
 int TPM2_CC_LOAD ;
 int TPM2_RS_PW ;
 int TPM2_ST_SESSIONS ;
 int TPM_BUF_OVERFLOW ;
 int TPM_DIGEST_SIZE ;
 size_t TPM_HEADER_SIZE ;
 unsigned int be16_to_cpup (int *) ;
 int be32_to_cpup (int *) ;
 int tpm2_buf_append_auth (struct tpm_buf*,int ,int *,int ,int ,int ,int ) ;
 int tpm_buf_append (struct tpm_buf*,int *,unsigned int) ;
 int tpm_buf_append_u32 (struct tpm_buf*,int ) ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 int tpm_buf_init (struct tpm_buf*,int ,int ) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int,char*) ;

__attribute__((used)) static int tpm2_load_cmd(struct tpm_chip *chip,
    struct trusted_key_payload *payload,
    struct trusted_key_options *options,
    u32 *blob_handle)
{
 struct tpm_buf buf;
 unsigned int private_len;
 unsigned int public_len;
 unsigned int blob_len;
 int rc;

 private_len = be16_to_cpup((__be16 *) &payload->blob[0]);
 if (private_len > (payload->blob_len - 2))
  return -E2BIG;

 public_len = be16_to_cpup((__be16 *) &payload->blob[2 + private_len]);
 blob_len = private_len + public_len + 4;
 if (blob_len > payload->blob_len)
  return -E2BIG;

 rc = tpm_buf_init(&buf, TPM2_ST_SESSIONS, TPM2_CC_LOAD);
 if (rc)
  return rc;

 tpm_buf_append_u32(&buf, options->keyhandle);
 tpm2_buf_append_auth(&buf, TPM2_RS_PW,
        ((void*)0) , 0,
        0 ,
        options->keyauth ,
        TPM_DIGEST_SIZE);

 tpm_buf_append(&buf, payload->blob, blob_len);

 if (buf.flags & TPM_BUF_OVERFLOW) {
  rc = -E2BIG;
  goto out;
 }

 rc = tpm_transmit_cmd(chip, &buf, 4, "loading blob");
 if (!rc)
  *blob_handle = be32_to_cpup(
   (__be32 *) &buf.data[TPM_HEADER_SIZE]);

out:
 tpm_buf_destroy(&buf);

 if (rc > 0)
  rc = -EPERM;

 return rc;
}
