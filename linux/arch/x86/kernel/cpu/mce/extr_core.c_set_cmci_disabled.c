
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int cmci_disabled; } ;


 size_t EINVAL ;
 scalar_t__ kstrtou64 (char const*,int ,scalar_t__*) ;
 TYPE_1__ mca_cfg ;
 int mce_disable_cmci ;
 int mce_enable_ce ;
 int mce_sysfs_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int on_each_cpu (int ,int *,int) ;

__attribute__((used)) static ssize_t set_cmci_disabled(struct device *s,
     struct device_attribute *attr,
     const char *buf, size_t size)
{
 u64 new;

 if (kstrtou64(buf, 0, &new) < 0)
  return -EINVAL;

 mutex_lock(&mce_sysfs_mutex);
 if (mca_cfg.cmci_disabled ^ !!new) {
  if (new) {

   on_each_cpu(mce_disable_cmci, ((void*)0), 1);
   mca_cfg.cmci_disabled = 1;
  } else {

   mca_cfg.cmci_disabled = 0;
   on_each_cpu(mce_enable_ce, ((void*)0), 1);
  }
 }
 mutex_unlock(&mce_sysfs_mutex);

 return size;
}
