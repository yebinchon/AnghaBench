
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus_descriptor {int (* ndctl ) (struct nvdimm_bus_descriptor*,int *,int ,struct nd_cmd_ars_cap*,int,int*) ;} ;
struct nfit_spa {struct acpi_nfit_system_address* spa; } ;
struct nd_cmd_ars_cap {int length; int address; } ;
struct acpi_nfit_system_address {int length; int address; } ;
struct acpi_nfit_desc {struct nvdimm_bus_descriptor nd_desc; } ;


 int ND_CMD_ARS_CAP ;
 int stub1 (struct nvdimm_bus_descriptor*,int *,int ,struct nd_cmd_ars_cap*,int,int*) ;

__attribute__((used)) static int ars_get_cap(struct acpi_nfit_desc *acpi_desc,
  struct nd_cmd_ars_cap *cmd, struct nfit_spa *nfit_spa)
{
 struct nvdimm_bus_descriptor *nd_desc = &acpi_desc->nd_desc;
 struct acpi_nfit_system_address *spa = nfit_spa->spa;
 int cmd_rc, rc;

 cmd->address = spa->address;
 cmd->length = spa->length;
 rc = nd_desc->ndctl(nd_desc, ((void*)0), ND_CMD_ARS_CAP, cmd,
   sizeof(*cmd), &cmd_rc);
 if (rc < 0)
  return rc;
 return cmd_rc;
}
