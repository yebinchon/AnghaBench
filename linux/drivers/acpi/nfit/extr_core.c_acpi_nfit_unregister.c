
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_nfit_desc {int nvdimm_bus; } ;


 int nvdimm_bus_unregister (int ) ;

__attribute__((used)) static void acpi_nfit_unregister(void *data)
{
 struct acpi_nfit_desc *acpi_desc = data;

 nvdimm_bus_unregister(acpi_desc->nvdimm_bus);
}
