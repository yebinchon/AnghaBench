
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_sysfs {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct fw_sysfs*) ;
 struct fw_sysfs* to_fw_sysfs (struct device*) ;

__attribute__((used)) static void fw_dev_release(struct device *dev)
{
 struct fw_sysfs *fw_sysfs = to_fw_sysfs(dev);

 kfree(fw_sysfs);
}
