
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 int FW_OPT_NOCACHE ;
 int FW_OPT_UEVENT ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int _request_firmware (struct firmware const**,char const*,struct device*,void*,size_t,int) ;
 scalar_t__ fw_cache_is_setup (struct device*,char const*) ;
 int module_put (int ) ;

int
request_firmware_into_buf(const struct firmware **firmware_p, const char *name,
     struct device *device, void *buf, size_t size)
{
 int ret;

 if (fw_cache_is_setup(device, name))
  return -EOPNOTSUPP;

 __module_get(THIS_MODULE);
 ret = _request_firmware(firmware_p, name, device, buf, size,
    FW_OPT_UEVENT | FW_OPT_NOCACHE);
 module_put(THIS_MODULE);
 return ret;
}
