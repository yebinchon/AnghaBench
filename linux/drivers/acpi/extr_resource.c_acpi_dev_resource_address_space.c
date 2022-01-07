
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ flags; } ;
struct resource_win {TYPE_1__ res; } ;
struct acpi_resource_address64 {int address; } ;
struct acpi_resource_address {int dummy; } ;
struct acpi_resource {int dummy; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_decode_space (struct resource_win*,struct acpi_resource_address*,int *) ;
 int acpi_resource_to_address64 (struct acpi_resource*,struct acpi_resource_address64*) ;

bool acpi_dev_resource_address_space(struct acpi_resource *ares,
         struct resource_win *win)
{
 struct acpi_resource_address64 addr;

 win->res.flags = 0;
 if (ACPI_FAILURE(acpi_resource_to_address64(ares, &addr)))
  return 0;

 return acpi_decode_space(win, (struct acpi_resource_address *)&addr,
     &addr.address);
}
