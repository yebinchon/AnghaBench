
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int dummy; } ;
struct nfit_mem {int dummy; } ;
struct device {int dummy; } ;
struct acpi_nfit_memory_map {int dummy; } ;


 struct acpi_nfit_memory_map* __to_nfit_memdev (struct nfit_mem*) ;
 struct nfit_mem* nvdimm_provider_data (struct nvdimm*) ;
 struct nvdimm* to_nvdimm (struct device*) ;

__attribute__((used)) static struct acpi_nfit_memory_map *to_nfit_memdev(struct device *dev)
{
 struct nvdimm *nvdimm = to_nvdimm(dev);
 struct nfit_mem *nfit_mem = nvdimm_provider_data(nvdimm);

 return __to_nfit_memdev(nfit_mem);
}
