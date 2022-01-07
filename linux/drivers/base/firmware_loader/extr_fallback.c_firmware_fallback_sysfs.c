
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct device {int dummy; } ;
typedef enum fw_opt { ____Placeholder_fw_opt } fw_opt ;


 int FW_OPT_NO_WARN ;
 int dev_dbg (struct device*,char*,char const*) ;
 int dev_warn (struct device*,char*,char const*) ;
 int fw_load_from_user_helper (struct firmware*,char const*,struct device*,int) ;
 int fw_run_sysfs_fallback (int) ;

int firmware_fallback_sysfs(struct firmware *fw, const char *name,
       struct device *device,
       enum fw_opt opt_flags,
       int ret)
{
 if (!fw_run_sysfs_fallback(opt_flags))
  return ret;

 if (!(opt_flags & FW_OPT_NO_WARN))
  dev_warn(device, "Falling back to sysfs fallback for: %s\n",
     name);
 else
  dev_dbg(device, "Falling back to sysfs fallback for: %s\n",
    name);
 return fw_load_from_user_helper(fw, name, device, opt_flags);
}
