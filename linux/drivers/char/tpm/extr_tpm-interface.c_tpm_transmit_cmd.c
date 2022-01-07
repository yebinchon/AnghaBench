
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_header {int return_code; } ;
struct tpm_chip {int dev; } ;
struct tpm_buf {scalar_t__ data; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EFAULT ;
 int PAGE_SIZE ;
 int TPM2_RC_TESTING ;
 int TPM_ERR_DEACTIVATED ;
 int TPM_ERR_DISABLED ;
 scalar_t__ TPM_HEADER_SIZE ;
 int be32_to_cpu (int ) ;
 int dev_err (int *,char*,int,char const*) ;
 scalar_t__ tpm_transmit (struct tpm_chip*,scalar_t__,int ) ;

ssize_t tpm_transmit_cmd(struct tpm_chip *chip, struct tpm_buf *buf,
    size_t min_rsp_body_length, const char *desc)
{
 const struct tpm_header *header = (struct tpm_header *)buf->data;
 int err;
 ssize_t len;

 len = tpm_transmit(chip, buf->data, PAGE_SIZE);
 if (len < 0)
  return len;

 err = be32_to_cpu(header->return_code);
 if (err != 0 && err != TPM_ERR_DISABLED && err != TPM_ERR_DEACTIVATED
     && err != TPM2_RC_TESTING && desc)
  dev_err(&chip->dev, "A TPM error (%d) occurred %s\n", err,
   desc);
 if (err)
  return err;

 if (len < min_rsp_body_length + TPM_HEADER_SIZE)
  return -EFAULT;

 return 0;
}
