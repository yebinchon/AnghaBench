
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum fw_opt { ____Placeholder_fw_opt } fw_opt ;
struct TYPE_2__ {scalar_t__ force_sysfs_fallback; } ;


 int FW_OPT_USERHELPER ;
 TYPE_1__ fw_fallback_config ;

__attribute__((used)) static bool fw_force_sysfs_fallback(enum fw_opt opt_flags)
{
 if (fw_fallback_config.force_sysfs_fallback)
  return 1;
 if (!(opt_flags & FW_OPT_USERHELPER))
  return 0;
 return 1;
}
