
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobj_uevent_env {int dummy; } ;
struct fw_sysfs {int nowait; TYPE_1__* fw_priv; } ;
struct TYPE_2__ {int fw_name; } ;


 int ENOMEM ;
 int __firmware_loading_timeout () ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,int ) ;

__attribute__((used)) static int do_firmware_uevent(struct fw_sysfs *fw_sysfs, struct kobj_uevent_env *env)
{
 if (add_uevent_var(env, "FIRMWARE=%s", fw_sysfs->fw_priv->fw_name))
  return -ENOMEM;
 if (add_uevent_var(env, "TIMEOUT=%i", __firmware_loading_timeout()))
  return -ENOMEM;
 if (add_uevent_var(env, "ASYNC=%d", fw_sysfs->nowait))
  return -ENOMEM;

 return 0;
}
