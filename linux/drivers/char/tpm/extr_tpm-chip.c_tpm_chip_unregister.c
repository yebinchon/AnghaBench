
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int flags; int devs; int cdevs; int hwrng; } ;


 int CONFIG_HW_RANDOM_TPM ;
 scalar_t__ IS_ENABLED (int ) ;
 int TPM_CHIP_FLAG_TPM2 ;
 int cdev_device_del (int *,int *) ;
 int hwrng_unregister (int *) ;
 int tpm_bios_log_teardown (struct tpm_chip*) ;
 int tpm_del_char_device (struct tpm_chip*) ;
 int tpm_del_legacy_sysfs (struct tpm_chip*) ;

void tpm_chip_unregister(struct tpm_chip *chip)
{
 tpm_del_legacy_sysfs(chip);
 if (IS_ENABLED(CONFIG_HW_RANDOM_TPM))
  hwrng_unregister(&chip->hwrng);
 tpm_bios_log_teardown(chip);
 if (chip->flags & TPM_CHIP_FLAG_TPM2)
  cdev_device_del(&chip->cdevs, &chip->devs);
 tpm_del_char_device(chip);
}
