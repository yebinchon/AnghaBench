
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_spa {struct nd_region* nd_region; struct acpi_nfit_system_address* spa; } ;
struct nd_region {int dummy; } ;
struct nd_cmd_ars_status {scalar_t__ address; scalar_t__ length; } ;
struct device {int dummy; } ;
struct acpi_nfit_system_address {scalar_t__ address; scalar_t__ length; int range_index; } ;
struct acpi_nfit_desc {struct device* dev; struct nfit_spa* scrub_spa; int init_mutex; struct nd_cmd_ars_status* ars_status; } ;


 int NVDIMM_REVALIDATE_POISON ;
 int dev_dbg (struct device*,char*,int ) ;
 int lockdep_assert_held (int *) ;
 struct device* nd_region_dev (struct nd_region*) ;
 int nvdimm_region_notify (struct nd_region*,int ) ;

__attribute__((used)) static void ars_complete(struct acpi_nfit_desc *acpi_desc,
  struct nfit_spa *nfit_spa)
{
 struct nd_cmd_ars_status *ars_status = acpi_desc->ars_status;
 struct acpi_nfit_system_address *spa = nfit_spa->spa;
 struct nd_region *nd_region = nfit_spa->nd_region;
 struct device *dev;

 lockdep_assert_held(&acpi_desc->init_mutex);





 if (acpi_desc->scrub_spa != nfit_spa)
  return;

 if ((ars_status->address >= spa->address && ars_status->address
    < spa->address + spa->length)
   || (ars_status->address < spa->address)) {
  if (ars_status->address + ars_status->length
    >= spa->address + spa->length)
                  ;
  else
   return;
 } else
  return;

 acpi_desc->scrub_spa = ((void*)0);
 if (nd_region) {
  dev = nd_region_dev(nd_region);
  nvdimm_region_notify(nd_region, NVDIMM_REVALIDATE_POISON);
 } else
  dev = acpi_desc->dev;
 dev_dbg(dev, "ARS: range %d complete\n", spa->range_index);
}
