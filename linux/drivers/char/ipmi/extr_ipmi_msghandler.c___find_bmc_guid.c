
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * type; } ;
struct bmc_device {int usecount; int guid; scalar_t__ dyn_guid_set; } ;
typedef int guid_t ;


 int bmc_device_type ;
 scalar_t__ guid_equal (int *,int const*) ;
 int kref_get_unless_zero (int *) ;
 struct bmc_device* to_bmc_device (struct device*) ;

__attribute__((used)) static int __find_bmc_guid(struct device *dev, const void *data)
{
 const guid_t *guid = data;
 struct bmc_device *bmc;
 int rv;

 if (dev->type != &bmc_device_type)
  return 0;

 bmc = to_bmc_device(dev);
 rv = bmc->dyn_guid_set && guid_equal(&bmc->guid, guid);
 if (rv)
  rv = kref_get_unless_zero(&bmc->usecount);
 return rv;
}
