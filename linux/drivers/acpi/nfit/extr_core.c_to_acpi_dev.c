
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus_descriptor {int provider_name; } ;
struct acpi_nfit_desc {int dev; struct nvdimm_bus_descriptor nd_desc; } ;
struct acpi_device {int dummy; } ;


 scalar_t__ strcmp (int ,char*) ;
 struct acpi_device* to_acpi_device (int ) ;

__attribute__((used)) static struct acpi_device *to_acpi_dev(struct acpi_nfit_desc *acpi_desc)
{
 struct nvdimm_bus_descriptor *nd_desc = &acpi_desc->nd_desc;





 if (!nd_desc->provider_name
   || strcmp(nd_desc->provider_name, "ACPI.NFIT") != 0)
  return ((void*)0);

 return to_acpi_device(acpi_desc->dev);
}
