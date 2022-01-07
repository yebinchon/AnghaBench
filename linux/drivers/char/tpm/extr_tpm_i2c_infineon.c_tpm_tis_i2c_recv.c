
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct tpm_chip {int dev; int timeout_c; } ;
typedef int __be32 ;
struct TYPE_2__ {int locality; } ;


 int EIO ;
 int ETIME ;
 int SLEEP_DURATION_RESET_HI ;
 int SLEEP_DURATION_RESET_LOW ;
 size_t TPM_HEADER_SIZE ;
 int TPM_STS_DATA_AVAIL ;
 int TPM_STS_VALID ;
 size_t be32_to_cpu (int ) ;
 int dev_err (int *,char*) ;
 int recv_data (struct tpm_chip*,int *,size_t) ;
 int release_locality (struct tpm_chip*,int ,int ) ;
 TYPE_1__ tpm_dev ;
 int tpm_tis_i2c_ready (struct tpm_chip*) ;
 int usleep_range (int ,int ) ;
 int wait_for_stat (struct tpm_chip*,int ,int ,int*) ;

__attribute__((used)) static int tpm_tis_i2c_recv(struct tpm_chip *chip, u8 *buf, size_t count)
{
 int size = 0;
 int status;
 u32 expected;

 if (count < TPM_HEADER_SIZE) {
  size = -EIO;
  goto out;
 }


 size = recv_data(chip, buf, TPM_HEADER_SIZE);
 if (size < TPM_HEADER_SIZE) {
  dev_err(&chip->dev, "Unable to read header\n");
  goto out;
 }

 expected = be32_to_cpu(*(__be32 *)(buf + 2));
 if (((size_t) expected > count) || (expected < TPM_HEADER_SIZE)) {
  size = -EIO;
  goto out;
 }

 size += recv_data(chip, &buf[TPM_HEADER_SIZE],
     expected - TPM_HEADER_SIZE);
 if (size < expected) {
  dev_err(&chip->dev, "Unable to read remainder of result\n");
  size = -ETIME;
  goto out;
 }

 wait_for_stat(chip, TPM_STS_VALID, chip->timeout_c, &status);
 if (status & TPM_STS_DATA_AVAIL) {
  dev_err(&chip->dev, "Error left over data\n");
  size = -EIO;
  goto out;
 }

out:
 tpm_tis_i2c_ready(chip);



 usleep_range(SLEEP_DURATION_RESET_LOW, SLEEP_DURATION_RESET_HI);
 release_locality(chip, tpm_dev.locality, 0);
 return size;
}
