
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvdimm_bus_descriptor {int dummy; } ;
struct nvdimm {int dummy; } ;
struct TYPE_2__ {int work; } ;
struct acpi_nfit_desc {TYPE_1__ dwork; } ;


 int EBUSY ;
 unsigned int ND_CMD_ARS_START ;
 struct acpi_nfit_desc* to_acpi_desc (struct nvdimm_bus_descriptor*) ;
 scalar_t__ work_busy (int *) ;

__attribute__((used)) static int __acpi_nfit_clear_to_send(struct nvdimm_bus_descriptor *nd_desc,
  struct nvdimm *nvdimm, unsigned int cmd)
{
 struct acpi_nfit_desc *acpi_desc = to_acpi_desc(nd_desc);

 if (nvdimm)
  return 0;
 if (cmd != ND_CMD_ARS_START)
  return 0;







 if (work_busy(&acpi_desc->dwork.work))
  return -EBUSY;

 return 0;
}
