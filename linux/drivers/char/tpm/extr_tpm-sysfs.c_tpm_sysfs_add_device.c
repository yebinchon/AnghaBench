
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int flags; scalar_t__ groups_cnt; int ** groups; } ;


 int TPM_CHIP_FLAG_TPM2 ;
 int WARN_ON (int) ;
 int tpm_dev_group ;

void tpm_sysfs_add_device(struct tpm_chip *chip)
{
 if (chip->flags & TPM_CHIP_FLAG_TPM2)
  return;

 WARN_ON(chip->groups_cnt != 0);
 chip->groups[chip->groups_cnt++] = &tpm_dev_group;
}
