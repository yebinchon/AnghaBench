
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tpm_chip {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int disable; } ;
struct TYPE_5__ {TYPE_1__ perm_flags; } ;
typedef TYPE_2__ cap_t ;


 int TPM_CAP_FLAG_PERM ;
 int sprintf (char*,char*,int) ;
 struct tpm_chip* to_tpm_chip (struct device*) ;
 scalar_t__ tpm1_getcap (struct tpm_chip*,int ,TYPE_2__*,char*,int) ;
 int tpm_put_ops (struct tpm_chip*) ;
 scalar_t__ tpm_try_get_ops (struct tpm_chip*) ;

__attribute__((used)) static ssize_t enabled_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct tpm_chip *chip = to_tpm_chip(dev);
 ssize_t rc = 0;
 cap_t cap;

 if (tpm_try_get_ops(chip))
  return 0;

 if (tpm1_getcap(chip, TPM_CAP_FLAG_PERM, &cap,
   "attempting to determine the permanent enabled state",
   sizeof(cap.perm_flags)))
  goto out_ops;

 rc = sprintf(buf, "%d\n", !cap.perm_flags.disable);
out_ops:
 tpm_put_ops(chip);
 return rc;
}
