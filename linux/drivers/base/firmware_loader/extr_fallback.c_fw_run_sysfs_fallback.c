
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum fw_opt { ____Placeholder_fw_opt } fw_opt ;
struct TYPE_2__ {scalar_t__ ignore_sysfs_fallback; } ;


 int FW_OPT_NOFALLBACK ;
 int LOADING_FIRMWARE ;
 TYPE_1__ fw_fallback_config ;
 int fw_force_sysfs_fallback (int) ;
 int pr_info_once (char*) ;
 int security_kernel_load_data (int ) ;

__attribute__((used)) static bool fw_run_sysfs_fallback(enum fw_opt opt_flags)
{
 int ret;

 if (fw_fallback_config.ignore_sysfs_fallback) {
  pr_info_once("Ignoring firmware sysfs fallback due to sysctl knob\n");
  return 0;
 }

 if ((opt_flags & FW_OPT_NOFALLBACK))
  return 0;


 ret = security_kernel_load_data(LOADING_FIRMWARE);
 if (ret < 0)
  return 0;

 return fw_force_sysfs_fallback(opt_flags);
}
