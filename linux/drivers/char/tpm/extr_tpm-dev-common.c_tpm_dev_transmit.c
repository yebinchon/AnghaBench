
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_space {int dummy; } ;
struct tpm_header {void* return_code; int tag; void* length; } ;
struct tpm_chip {int dummy; } ;
typedef int ssize_t ;


 int EOPNOTSUPP ;
 int TPM2_RC_COMMAND_CODE ;
 int TPM2_ST_NO_SESSIONS ;
 int TSS2_RESMGR_TPM_RC_LAYER ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;
 int tpm2_commit_space (struct tpm_chip*,struct tpm_space*,int *,int*) ;
 int tpm2_prepare_space (struct tpm_chip*,struct tpm_space*,int *,size_t) ;
 int tpm_transmit (struct tpm_chip*,int *,size_t) ;

__attribute__((used)) static ssize_t tpm_dev_transmit(struct tpm_chip *chip, struct tpm_space *space,
    u8 *buf, size_t bufsiz)
{
 struct tpm_header *header = (void *)buf;
 ssize_t ret, len;

 ret = tpm2_prepare_space(chip, space, buf, bufsiz);



 if (ret == -EOPNOTSUPP) {
  header->length = cpu_to_be32(sizeof(*header));
  header->tag = cpu_to_be16(TPM2_ST_NO_SESSIONS);
  header->return_code = cpu_to_be32(TPM2_RC_COMMAND_CODE |
        TSS2_RESMGR_TPM_RC_LAYER);
  ret = sizeof(*header);
 }
 if (ret)
  goto out_rc;

 len = tpm_transmit(chip, buf, bufsiz);
 if (len < 0)
  ret = len;

 if (!ret)
  ret = tpm2_commit_space(chip, space, buf, &len);

out_rc:
 return ret ? ret : len;
}
