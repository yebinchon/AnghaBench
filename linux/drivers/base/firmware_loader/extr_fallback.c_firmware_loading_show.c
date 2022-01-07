
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_sysfs {scalar_t__ fw_priv; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int fw_lock ;
 int fw_sysfs_loading (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct fw_sysfs* to_fw_sysfs (struct device*) ;

__attribute__((used)) static ssize_t firmware_loading_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct fw_sysfs *fw_sysfs = to_fw_sysfs(dev);
 int loading = 0;

 mutex_lock(&fw_lock);
 if (fw_sysfs->fw_priv)
  loading = fw_sysfs_loading(fw_sysfs->fw_priv);
 mutex_unlock(&fw_lock);

 return sprintf(buf, "%d\n", loading);
}
