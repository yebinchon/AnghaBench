
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tpm_chip {void* timeout_d; void* timeout_c; void* timeout_b; void* timeout_a; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int * client; int locality; struct tpm_chip* chip; int chip_type; } ;


 int EIO ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct tpm_chip*) ;
 int PTR_ERR (struct tpm_chip*) ;
 int SLB9635 ;
 int SLB9645 ;
 int TIS_LONG_TIMEOUT ;
 int TIS_SHORT_TIMEOUT ;
 int TPM_DID_VID (int ) ;
 int TPM_TIS_I2C_DID_VID_9635 ;
 int TPM_TIS_I2C_DID_VID_9645 ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int) ;
 scalar_t__ iic_tpm_read (int ,int *,int) ;
 void* msecs_to_jiffies (int ) ;
 int release_locality (struct tpm_chip*,int ,int) ;
 scalar_t__ request_locality (struct tpm_chip*,int ) ;
 int tpm_chip_register (struct tpm_chip*) ;
 TYPE_1__ tpm_dev ;
 int tpm_tis_i2c ;
 struct tpm_chip* tpmm_chip_alloc (struct device*,int *) ;

__attribute__((used)) static int tpm_tis_i2c_init(struct device *dev)
{
 u32 vendor;
 int rc = 0;
 struct tpm_chip *chip;

 chip = tpmm_chip_alloc(dev, &tpm_tis_i2c);
 if (IS_ERR(chip))
  return PTR_ERR(chip);


 chip->timeout_a = msecs_to_jiffies(TIS_SHORT_TIMEOUT);
 chip->timeout_b = msecs_to_jiffies(TIS_LONG_TIMEOUT);
 chip->timeout_c = msecs_to_jiffies(TIS_SHORT_TIMEOUT);
 chip->timeout_d = msecs_to_jiffies(TIS_SHORT_TIMEOUT);

 if (request_locality(chip, 0) != 0) {
  dev_err(dev, "could not request locality\n");
  rc = -ENODEV;
  goto out_err;
 }


 if (iic_tpm_read(TPM_DID_VID(0), (u8 *)&vendor, 4) < 0) {
  dev_err(dev, "could not read vendor id\n");
  rc = -EIO;
  goto out_release;
 }

 if (vendor == TPM_TIS_I2C_DID_VID_9645) {
  tpm_dev.chip_type = SLB9645;
 } else if (vendor == TPM_TIS_I2C_DID_VID_9635) {
  tpm_dev.chip_type = SLB9635;
 } else {
  dev_err(dev, "vendor id did not match! ID was %08x\n", vendor);
  rc = -ENODEV;
  goto out_release;
 }

 dev_info(dev, "1.2 TPM (device-id 0x%X)\n", vendor >> 16);

 tpm_dev.chip = chip;

 return tpm_chip_register(chip);
out_release:
 release_locality(chip, tpm_dev.locality, 1);
 tpm_dev.client = ((void*)0);
out_err:
 return rc;
}
