
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_device_id {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bmc_device {int dummy; } ;
typedef int ssize_t ;


 int bmc_get_device_id (int *,struct bmc_device*,struct ipmi_device_id*,int *,int *) ;
 int ipmi_version_major (struct ipmi_device_id*) ;
 int ipmi_version_minor (struct ipmi_device_id*) ;
 int snprintf (char*,int,char*,int,int) ;
 struct bmc_device* to_bmc_device (struct device*) ;

__attribute__((used)) static ssize_t ipmi_version_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct bmc_device *bmc = to_bmc_device(dev);
 struct ipmi_device_id id;
 int rv;

 rv = bmc_get_device_id(((void*)0), bmc, &id, ((void*)0), ((void*)0));
 if (rv)
  return rv;

 return snprintf(buf, 20, "%u.%u\n",
   ipmi_version_major(&id),
   ipmi_version_minor(&id));
}
