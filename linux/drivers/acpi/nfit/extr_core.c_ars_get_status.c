
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus_descriptor {int (* ndctl ) (struct nvdimm_bus_descriptor*,int *,int ,struct nd_cmd_ars_status*,int ,int*) ;} ;
struct nd_cmd_ars_status {int dummy; } ;
struct acpi_nfit_desc {int max_ars; struct nd_cmd_ars_status* ars_status; struct nvdimm_bus_descriptor nd_desc; } ;


 int ND_CMD_ARS_STATUS ;
 int stub1 (struct nvdimm_bus_descriptor*,int *,int ,struct nd_cmd_ars_status*,int ,int*) ;

__attribute__((used)) static int ars_get_status(struct acpi_nfit_desc *acpi_desc)
{
 struct nvdimm_bus_descriptor *nd_desc = &acpi_desc->nd_desc;
 struct nd_cmd_ars_status *ars_status = acpi_desc->ars_status;
 int rc, cmd_rc;

 rc = nd_desc->ndctl(nd_desc, ((void*)0), ND_CMD_ARS_STATUS, ars_status,
   acpi_desc->max_ars, &cmd_rc);
 if (rc < 0)
  return rc;
 return cmd_rc;
}
