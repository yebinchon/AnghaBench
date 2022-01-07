
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int dummy; } ;
struct nfit_mem {scalar_t__ memdev_bdw; scalar_t__ memdev_pmem; } ;


 struct nfit_mem* nvdimm_provider_data (struct nvdimm*) ;

__attribute__((used)) static int num_nvdimm_formats(struct nvdimm *nvdimm)
{
 struct nfit_mem *nfit_mem = nvdimm_provider_data(nvdimm);
 int formats = 0;

 if (nfit_mem->memdev_pmem)
  formats++;
 if (nfit_mem->memdev_bdw)
  formats++;
 return formats;
}
