
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {int integrity_kobj; } ;
struct TYPE_2__ {int kobj; } ;


 int KOBJ_ADD ;
 TYPE_1__* disk_to_dev (struct gendisk*) ;
 int integrity_ktype ;
 scalar_t__ kobject_init_and_add (int *,int *,int *,char*,char*) ;
 int kobject_uevent (int *,int ) ;

void blk_integrity_add(struct gendisk *disk)
{
 if (kobject_init_and_add(&disk->integrity_kobj, &integrity_ktype,
     &disk_to_dev(disk)->kobj, "%s", "integrity"))
  return;

 kobject_uevent(&disk->integrity_kobj, KOBJ_ADD);
}
