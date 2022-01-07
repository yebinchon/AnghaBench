
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct device {int dummy; } ;
typedef enum fw_opt { ____Placeholder_fw_opt } fw_opt ;



__attribute__((used)) static inline int firmware_fallback_sysfs(struct firmware *fw, const char *name,
       struct device *device,
       enum fw_opt opt_flags,
       int ret)
{

 return ret;
}
