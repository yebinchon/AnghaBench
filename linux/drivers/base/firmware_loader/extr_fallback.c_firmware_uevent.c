
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct fw_sysfs {scalar_t__ fw_priv; } ;
struct device {int dummy; } ;


 int do_firmware_uevent (struct fw_sysfs*,struct kobj_uevent_env*) ;
 int fw_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fw_sysfs* to_fw_sysfs (struct device*) ;

__attribute__((used)) static int firmware_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct fw_sysfs *fw_sysfs = to_fw_sysfs(dev);
 int err = 0;

 mutex_lock(&fw_lock);
 if (fw_sysfs->fw_priv)
  err = do_firmware_uevent(fw_sysfs, env);
 mutex_unlock(&fw_lock);
 return err;
}
