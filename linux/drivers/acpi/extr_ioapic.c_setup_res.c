
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int win ;
struct resource {int flags; } ;
struct resource_win {struct resource res; } ;
struct acpi_resource {int dummy; } ;
typedef int acpi_status ;


 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 int IORESOURCE_DISABLED ;
 int IORESOURCE_MEM ;
 int IORESOURCE_PREFETCH ;
 scalar_t__ acpi_dev_filter_resource_type (struct acpi_resource*,int ) ;
 scalar_t__ acpi_dev_resource_address_space (struct acpi_resource*,struct resource_win*) ;
 scalar_t__ acpi_dev_resource_ext_address_space (struct acpi_resource*,struct resource_win*) ;
 int acpi_dev_resource_memory (struct acpi_resource*,struct resource*) ;
 int memset (struct resource_win*,int ,int) ;

__attribute__((used)) static acpi_status setup_res(struct acpi_resource *acpi_res, void *data)
{
 struct resource *res = data;
 struct resource_win win;





 memset(&win, 0, sizeof(win));

 res->flags = 0;
 if (acpi_dev_filter_resource_type(acpi_res, IORESOURCE_MEM))
  return AE_OK;

 if (!acpi_dev_resource_memory(acpi_res, res)) {
  if (acpi_dev_resource_address_space(acpi_res, &win) ||
      acpi_dev_resource_ext_address_space(acpi_res, &win))
   *res = win.res;
 }
 if ((res->flags & IORESOURCE_PREFETCH) ||
     (res->flags & IORESOURCE_DISABLED))
  res->flags = 0;

 return AE_CTRL_TERMINATE;
}
