
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int fw_add_devm_name (struct device*,char const*) ;
 int fw_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int firmware_request_cache(struct device *device, const char *name)
{
 int ret;

 mutex_lock(&fw_lock);
 ret = fw_add_devm_name(device, name);
 mutex_unlock(&fw_lock);

 return ret;
}
