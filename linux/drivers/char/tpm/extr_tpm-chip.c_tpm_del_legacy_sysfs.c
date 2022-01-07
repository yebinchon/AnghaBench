
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* parent; } ;
struct tpm_chip {int flags; TYPE_2__ dev; TYPE_3__** groups; } ;
struct attribute {char* name; } ;
struct TYPE_6__ {struct attribute** attrs; } ;
struct TYPE_4__ {int kobj; } ;


 int TPM_CHIP_FLAG_TPM2 ;
 int TPM_CHIP_FLAG_VIRTUAL ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void tpm_del_legacy_sysfs(struct tpm_chip *chip)
{
 struct attribute **i;

 if (chip->flags & (TPM_CHIP_FLAG_TPM2 | TPM_CHIP_FLAG_VIRTUAL))
  return;

 sysfs_remove_link(&chip->dev.parent->kobj, "ppi");

 for (i = chip->groups[0]->attrs; *i != ((void*)0); ++i)
  sysfs_remove_link(&chip->dev.parent->kobj, (*i)->name);
}
