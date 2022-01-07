
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int num_nvdimm_formats (struct nvdimm*) ;
 int sprintf (char*,char*,int) ;
 struct nvdimm* to_nvdimm (struct device*) ;

__attribute__((used)) static ssize_t formats_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nvdimm *nvdimm = to_nvdimm(dev);

 return sprintf(buf, "%d\n", num_nvdimm_formats(nvdimm));
}
