
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int reference_count; } ;



__attribute__((used)) static bool acpi_ec_flushed(struct acpi_ec *ec)
{
 return ec->reference_count == 1;
}
