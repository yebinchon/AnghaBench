
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loop_device {int lo_disk; scalar_t__ sysfs_inited; } ;
struct TYPE_2__ {int kobj; } ;


 TYPE_1__* disk_to_dev (int ) ;
 int loop_attribute_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void loop_sysfs_exit(struct loop_device *lo)
{
 if (lo->sysfs_inited)
  sysfs_remove_group(&disk_to_dev(lo->lo_disk)->kobj,
       &loop_attribute_group);
}
