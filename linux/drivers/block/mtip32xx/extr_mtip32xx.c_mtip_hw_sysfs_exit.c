
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct driver_data {int dummy; } ;
struct TYPE_2__ {int attr; } ;


 int EINVAL ;
 TYPE_1__ dev_attr_status ;
 int sysfs_remove_file (struct kobject*,int *) ;

__attribute__((used)) static int mtip_hw_sysfs_exit(struct driver_data *dd, struct kobject *kobj)
{
 if (!kobj || !dd)
  return -EINVAL;

 sysfs_remove_file(kobj, &dev_attr_status.attr);

 return 0;
}
