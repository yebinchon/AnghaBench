
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct device {int dummy; } ;


 int FW_OPT_NO_WARN ;
 int FW_OPT_UEVENT ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int _request_firmware (struct firmware const**,char const*,struct device*,int *,int ,int) ;
 int module_put (int ) ;

int firmware_request_nowarn(const struct firmware **firmware, const char *name,
       struct device *device)
{
 int ret;


 __module_get(THIS_MODULE);
 ret = _request_firmware(firmware, name, device, ((void*)0), 0,
    FW_OPT_UEVENT | FW_OPT_NO_WARN);
 module_put(THIS_MODULE);
 return ret;
}
