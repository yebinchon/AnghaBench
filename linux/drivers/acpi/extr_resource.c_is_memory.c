
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int win ;
struct resource {int dummy; } ;
struct resource_win {struct resource res; } ;
struct acpi_resource {int dummy; } ;


 scalar_t__ acpi_dev_resource_address_space (struct acpi_resource*,struct resource_win*) ;
 scalar_t__ acpi_dev_resource_ext_address_space (struct acpi_resource*,struct resource_win*) ;
 scalar_t__ acpi_dev_resource_memory (struct acpi_resource*,struct resource*) ;
 int memset (struct resource_win*,int ,int) ;

__attribute__((used)) static int is_memory(struct acpi_resource *ares, void *not_used)
{
 struct resource_win win;
 struct resource *res = &win.res;

 memset(&win, 0, sizeof(win));

 return !(acpi_dev_resource_memory(ares, res)
        || acpi_dev_resource_address_space(ares, &win)
        || acpi_dev_resource_ext_address_space(ares, &win));
}
