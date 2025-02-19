
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_header {int return_code; } ;
struct tpm_chip {int flags; int dev; } ;
struct tpm_buf {scalar_t__ data; } ;
struct proxy_dev {int state; } ;


 int STATE_DRIVER_COMMAND ;
 int TPM2_CC_SET_LOCALITY ;
 int TPM2_ST_SESSIONS ;
 int TPM_CHIP_FLAG_TPM2 ;
 int TPM_ORD_SET_LOCALITY ;
 int TPM_TAG_RQU_COMMAND ;
 int be32_to_cpu (int ) ;
 struct proxy_dev* dev_get_drvdata (int *) ;
 int tpm_buf_append_u8 (struct tpm_buf*,int) ;
 int tpm_buf_destroy (struct tpm_buf*) ;
 int tpm_buf_init (struct tpm_buf*,int ,int ) ;
 int tpm_transmit_cmd (struct tpm_chip*,struct tpm_buf*,int ,char*) ;

__attribute__((used)) static int vtpm_proxy_request_locality(struct tpm_chip *chip, int locality)
{
 struct tpm_buf buf;
 int rc;
 const struct tpm_header *header;
 struct proxy_dev *proxy_dev = dev_get_drvdata(&chip->dev);

 if (chip->flags & TPM_CHIP_FLAG_TPM2)
  rc = tpm_buf_init(&buf, TPM2_ST_SESSIONS,
      TPM2_CC_SET_LOCALITY);
 else
  rc = tpm_buf_init(&buf, TPM_TAG_RQU_COMMAND,
      TPM_ORD_SET_LOCALITY);
 if (rc)
  return rc;
 tpm_buf_append_u8(&buf, locality);

 proxy_dev->state |= STATE_DRIVER_COMMAND;

 rc = tpm_transmit_cmd(chip, &buf, 0, "attempting to set locality");

 proxy_dev->state &= ~STATE_DRIVER_COMMAND;

 if (rc < 0) {
  locality = rc;
  goto out;
 }

 header = (const struct tpm_header *)buf.data;
 rc = be32_to_cpu(header->return_code);
 if (rc)
  locality = -1;

out:
 tpm_buf_destroy(&buf);

 return locality;
}
