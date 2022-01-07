
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvdimm_bus {int dummy; } ;
struct nd_cmd_ars_status {int out_length; int num_records; TYPE_1__* records; } ;
struct nd_ars_record {int dummy; } ;
struct acpi_nfit_desc {int dev; int scrub_flags; struct nd_cmd_ars_status* ars_status; struct nvdimm_bus* nvdimm_bus; } ;
struct TYPE_2__ {int length; int err_address; } ;


 int ARS_VALID ;
 int dev_dbg (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int nvdimm_bus_add_badrange (struct nvdimm_bus*,int ,int ) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int ars_status_process_records(struct acpi_nfit_desc *acpi_desc)
{
 struct nvdimm_bus *nvdimm_bus = acpi_desc->nvdimm_bus;
 struct nd_cmd_ars_status *ars_status = acpi_desc->ars_status;
 int rc;
 u32 i;





 if (ars_status->out_length < 44)
  return 0;





 if (!test_and_clear_bit(ARS_VALID, &acpi_desc->scrub_flags)) {
  dev_dbg(acpi_desc->dev, "skip %d stale records\n",
    ars_status->num_records);
  return 0;
 }

 for (i = 0; i < ars_status->num_records; i++) {

  if (ars_status->out_length
    < 44 + sizeof(struct nd_ars_record) * (i + 1))
   break;
  rc = nvdimm_bus_add_badrange(nvdimm_bus,
    ars_status->records[i].err_address,
    ars_status->records[i].length);
  if (rc)
   return rc;
 }
 if (i < ars_status->num_records)
  dev_warn(acpi_desc->dev, "detected truncated ars results\n");

 return 0;
}
