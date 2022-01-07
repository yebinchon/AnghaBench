
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvdimm {int dummy; } ;
struct nfit_mem {int flags; } ;


 int ACPI_LABELS_LOCKED ;
 int EACCES ;
 int EIO ;



 int ND_CONFIG_LOCKED ;
 int NFIT_MEM_LSR ;
 int NFIT_MEM_LSW ;
 struct nfit_mem* nvdimm_provider_data (struct nvdimm*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int xlat_nvdimm_status(struct nvdimm *nvdimm, void *buf, unsigned int cmd,
  u32 status)
{
 struct nfit_mem *nfit_mem = nvdimm_provider_data(nvdimm);

 switch (cmd) {
 case 129:




  if (test_bit(NFIT_MEM_LSR, &nfit_mem->flags))
   break;

  if (status >> 16 & ND_CONFIG_LOCKED)
   return -EACCES;
  break;
 case 130:
  if (test_bit(NFIT_MEM_LSR, &nfit_mem->flags)
    && status == ACPI_LABELS_LOCKED)
   return -EACCES;
  break;
 case 128:
  if (test_bit(NFIT_MEM_LSW, &nfit_mem->flags)
    && status == ACPI_LABELS_LOCKED)
   return -EACCES;
  break;
 default:
  break;
 }


 if (status)
  return -EIO;
 return 0;
}
