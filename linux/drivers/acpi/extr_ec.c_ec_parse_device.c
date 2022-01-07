
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct acpi_ec {scalar_t__ command_addr; scalar_t__ data_addr; unsigned long long gpe; unsigned long long global_lock; int handle; } ;
typedef int acpi_status ;
typedef int acpi_handle ;
struct TYPE_2__ {unsigned long long gpe; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 scalar_t__ EC_FLAGS_IGNORE_DSDT_GPE ;
 int METHOD_NAME__CRS ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_walk_resources (int ,int ,int ,struct acpi_ec*) ;
 TYPE_1__* boot_ec ;
 scalar_t__ boot_ec_is_ecdt ;
 int ec_parse_io_ports ;

__attribute__((used)) static acpi_status
ec_parse_device(acpi_handle handle, u32 Level, void *context, void **retval)
{
 acpi_status status;
 unsigned long long tmp = 0;
 struct acpi_ec *ec = context;


 ec->command_addr = ec->data_addr = 0;

 status = acpi_walk_resources(handle, METHOD_NAME__CRS,
         ec_parse_io_ports, ec);
 if (ACPI_FAILURE(status))
  return status;
 if (ec->data_addr == 0 || ec->command_addr == 0)
  return AE_OK;

 if (boot_ec && boot_ec_is_ecdt && EC_FLAGS_IGNORE_DSDT_GPE) {




  ec->gpe = boot_ec->gpe;
 } else {


  status = acpi_evaluate_integer(handle, "_GPE", ((void*)0), &tmp);
  if (ACPI_FAILURE(status))
   return status;
  ec->gpe = tmp;
 }

 tmp = 0;
 acpi_evaluate_integer(handle, "_GLK", ((void*)0), &tmp);
 ec->global_lock = tmp;
 ec->handle = handle;
 return AE_CTRL_TERMINATE;
}
