
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int dummy; } ;
struct nfit_mem {char* id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct nfit_mem* nvdimm_provider_data (struct nvdimm*) ;
 int sprintf (char*,char*,char*) ;
 struct nvdimm* to_nvdimm (struct device*) ;

__attribute__((used)) static ssize_t id_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nvdimm *nvdimm = to_nvdimm(dev);
 struct nfit_mem *nfit_mem = nvdimm_provider_data(nvdimm);

 return sprintf(buf, "%s\n", nfit_mem->id);
}
