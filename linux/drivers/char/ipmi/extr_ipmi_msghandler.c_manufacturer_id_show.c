
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_device_id {int manufacturer_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bmc_device {int dummy; } ;
typedef int ssize_t ;


 int bmc_get_device_id (int *,struct bmc_device*,struct ipmi_device_id*,int *,int *) ;
 int snprintf (char*,int,char*,int) ;
 struct bmc_device* to_bmc_device (struct device*) ;

__attribute__((used)) static ssize_t manufacturer_id_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct bmc_device *bmc = to_bmc_device(dev);
 struct ipmi_device_id id;
 int rv;

 rv = bmc_get_device_id(((void*)0), bmc, &id, ((void*)0), ((void*)0));
 if (rv)
  return rv;

 return snprintf(buf, 20, "0x%6.6x\n", id.manufacturer_id);
}
