
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bmc_device {int dummy; } ;
typedef int ssize_t ;
typedef int guid_t ;


 int ENOENT ;
 scalar_t__ UUID_STRING_LEN ;
 int bmc_get_device_id (int *,struct bmc_device*,int *,int*,int *) ;
 int snprintf (char*,scalar_t__,char*,int *) ;
 struct bmc_device* to_bmc_device (struct device*) ;

__attribute__((used)) static ssize_t guid_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct bmc_device *bmc = to_bmc_device(dev);
 bool guid_set;
 guid_t guid;
 int rv;

 rv = bmc_get_device_id(((void*)0), bmc, ((void*)0), &guid_set, &guid);
 if (rv)
  return rv;
 if (!guid_set)
  return -ENOENT;

 return snprintf(buf, UUID_STRING_LEN + 1 + 1, "%pUl\n", &guid);
}
