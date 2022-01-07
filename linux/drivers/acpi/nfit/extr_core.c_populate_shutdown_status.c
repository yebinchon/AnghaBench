
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_mem {scalar_t__ family; } ;


 scalar_t__ NVDIMM_FAMILY_INTEL ;
 int nfit_intel_shutdown_status (struct nfit_mem*) ;

__attribute__((used)) static void populate_shutdown_status(struct nfit_mem *nfit_mem)
{





 if (nfit_mem->family == NVDIMM_FAMILY_INTEL)
  nfit_intel_shutdown_status(nfit_mem);
}
