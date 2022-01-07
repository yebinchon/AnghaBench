
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int integrity_kobj; } ;


 int KOBJ_REMOVE ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;

void blk_integrity_del(struct gendisk *disk)
{
 kobject_uevent(&disk->integrity_kobj, KOBJ_REMOVE);
 kobject_del(&disk->integrity_kobj);
 kobject_put(&disk->integrity_kobj);
}
