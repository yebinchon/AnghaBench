
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus_descriptor {int bus_dsm_mask; } ;
struct nvdimm_bus {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;
 struct nvdimm_bus_descriptor* to_nd_desc (struct nvdimm_bus*) ;
 struct nvdimm_bus* to_nvdimm_bus (struct device*) ;

__attribute__((used)) static ssize_t bus_dsm_mask_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nvdimm_bus *nvdimm_bus = to_nvdimm_bus(dev);
 struct nvdimm_bus_descriptor *nd_desc = to_nd_desc(nvdimm_bus);

 return sprintf(buf, "%#lx\n", nd_desc->bus_dsm_mask);
}
