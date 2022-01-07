
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loop_device {int sysfs_inited; int lo_disk; } ;
struct TYPE_2__ {int kobj; } ;


 TYPE_1__* disk_to_dev (int ) ;
 int loop_attribute_group ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static void loop_sysfs_init(struct loop_device *lo)
{
 lo->sysfs_inited = !sysfs_create_group(&disk_to_dev(lo->lo_disk)->kobj,
      &loop_attribute_group);
}
