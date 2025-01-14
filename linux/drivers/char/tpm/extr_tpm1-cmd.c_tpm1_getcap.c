
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpm_chip {int dummy; } ;
struct tpm_buf {int * data; } ;
typedef int ssize_t ;
typedef int cap_t ;


 int TPM_CAP_FLAG ;
 int TPM_CAP_FLAG_PERM ;
 int TPM_CAP_FLAG_VOL ;
 int TPM_CAP_PROP ;
 int TPM_CAP_VERSION_1_1 ;
 int TPM_CAP_VERSION_1_2 ;
 int TPM_HEADER_SIZE ;
 int TPM_ORD_GET_CAP ;
 int TPM_TAG_RQU_COMMAND ;
 int tpm_buf_append_u32 (struct tpm_buf*,int) ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 int tpm_buf_init (struct tpm_buf*,int ,int ) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,size_t,char const*) ;

ssize_t tpm1_getcap(struct tpm_chip *chip, u32 subcap_id, cap_t *cap,
      const char *desc, size_t min_cap_length)
{
 struct tpm_buf buf;
 int rc;

 rc = tpm_buf_init(&buf, TPM_TAG_RQU_COMMAND, TPM_ORD_GET_CAP);
 if (rc)
  return rc;

 if (subcap_id == TPM_CAP_VERSION_1_1 ||
     subcap_id == TPM_CAP_VERSION_1_2) {
  tpm_buf_append_u32(&buf, subcap_id);
  tpm_buf_append_u32(&buf, 0);
 } else {
  if (subcap_id == TPM_CAP_FLAG_PERM ||
      subcap_id == TPM_CAP_FLAG_VOL)
   tpm_buf_append_u32(&buf, TPM_CAP_FLAG);
  else
   tpm_buf_append_u32(&buf, TPM_CAP_PROP);

  tpm_buf_append_u32(&buf, 4);
  tpm_buf_append_u32(&buf, subcap_id);
 }
 rc = tpm_transmit_cmd(chip, &buf, min_cap_length, desc);
 if (!rc)
  *cap = *(cap_t *)&buf.data[TPM_HEADER_SIZE + 4];
 tpm_buf_destroy(&buf);
 return rc;
}
