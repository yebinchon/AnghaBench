
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int kobj; TYPE_2__* parent; } ;
struct tpm_chip {int flags; TYPE_3__ dev; TYPE_1__** groups; } ;
struct attribute {char* name; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_4__ {struct attribute** attrs; } ;


 int ENOENT ;
 int TPM_CHIP_FLAG_TPM2 ;
 int TPM_CHIP_FLAG_VIRTUAL ;
 int __compat_only_sysfs_link_entry_to_kobj (int *,int *,char*) ;
 int tpm_del_legacy_sysfs (struct tpm_chip*) ;

__attribute__((used)) static int tpm_add_legacy_sysfs(struct tpm_chip *chip)
{
 struct attribute **i;
 int rc;

 if (chip->flags & (TPM_CHIP_FLAG_TPM2 | TPM_CHIP_FLAG_VIRTUAL))
  return 0;

 rc = __compat_only_sysfs_link_entry_to_kobj(
      &chip->dev.parent->kobj, &chip->dev.kobj, "ppi");
 if (rc && rc != -ENOENT)
  return rc;


 for (i = chip->groups[0]->attrs; *i != ((void*)0); ++i) {
  rc = __compat_only_sysfs_link_entry_to_kobj(
      &chip->dev.parent->kobj, &chip->dev.kobj, (*i)->name);
  if (rc) {
   tpm_del_legacy_sysfs(chip);
   return rc;
  }
 }

 return 0;
}
