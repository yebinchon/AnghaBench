
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpm_chip {int* cc_attrs_tbl; int nr_commands; int dev; } ;
struct tpm_buf {int * data; } ;
typedef int __be32 ;


 int EFAULT ;
 int ENODEV ;
 int GENMASK (int,int ) ;
 int GFP_KERNEL ;
 int TPM2_CAP_COMMANDS ;
 int TPM2_CC_ATTR_CHANDLES ;
 int TPM2_CC_CONTEXT_SAVE ;
 int TPM2_CC_FIRST ;
 int TPM2_CC_FLUSH_CONTEXT ;
 int TPM2_CC_GET_CAPABILITY ;
 int TPM2_ST_NO_SESSIONS ;
 int TPM_HEADER_SIZE ;
 int TPM_PT_TOTAL_COMMANDS ;
 int be32_to_cpup (int *) ;
 int* devm_kcalloc (int *,int,int,int ) ;
 int tpm2_get_tpm_pt (struct tpm_chip*,int ,int*,int *) ;
 int tpm_buf_append_u32 (struct tpm_buf*,int) ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 int tpm_buf_init (struct tpm_buf*,int ,int ) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int,int *) ;

__attribute__((used)) static int tpm2_get_cc_attrs_tbl(struct tpm_chip *chip)
{
 struct tpm_buf buf;
 u32 nr_commands;
 __be32 *attrs;
 u32 cc;
 int i;
 int rc;

 rc = tpm2_get_tpm_pt(chip, TPM_PT_TOTAL_COMMANDS, &nr_commands, ((void*)0));
 if (rc)
  goto out;

 if (nr_commands > 0xFFFFF) {
  rc = -EFAULT;
  goto out;
 }

 chip->cc_attrs_tbl = devm_kcalloc(&chip->dev, 4, nr_commands,
       GFP_KERNEL);

 rc = tpm_buf_init(&buf, TPM2_ST_NO_SESSIONS, TPM2_CC_GET_CAPABILITY);
 if (rc)
  goto out;

 tpm_buf_append_u32(&buf, TPM2_CAP_COMMANDS);
 tpm_buf_append_u32(&buf, TPM2_CC_FIRST);
 tpm_buf_append_u32(&buf, nr_commands);

 rc = tpm_transmit_cmd(chip, &buf, 9 + 4 * nr_commands, ((void*)0));
 if (rc) {
  tpm_buf_destroy(&buf);
  goto out;
 }

 if (nr_commands !=
     be32_to_cpup((__be32 *)&buf.data[TPM_HEADER_SIZE + 5])) {
  tpm_buf_destroy(&buf);
  goto out;
 }

 chip->nr_commands = nr_commands;

 attrs = (__be32 *)&buf.data[TPM_HEADER_SIZE + 9];
 for (i = 0; i < nr_commands; i++, attrs++) {
  chip->cc_attrs_tbl[i] = be32_to_cpup(attrs);
  cc = chip->cc_attrs_tbl[i] & 0xFFFF;

  if (cc == TPM2_CC_CONTEXT_SAVE || cc == TPM2_CC_FLUSH_CONTEXT) {
   chip->cc_attrs_tbl[i] &=
    ~(GENMASK(2, 0) << TPM2_CC_ATTR_CHANDLES);
   chip->cc_attrs_tbl[i] |= 1 << TPM2_CC_ATTR_CHANDLES;
  }
 }

 tpm_buf_destroy(&buf);

out:
 if (rc > 0)
  rc = -ENODEV;
 return rc;
}
