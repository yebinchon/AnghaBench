
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENFORCE_RESOURCES_STRICT ;
 scalar_t__ acpi_enforce_resources ;

int acpi_resources_are_enforced(void)
{
 return acpi_enforce_resources == ENFORCE_RESOURCES_STRICT;
}
