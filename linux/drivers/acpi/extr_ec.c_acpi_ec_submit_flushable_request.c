
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int dummy; } ;


 int acpi_ec_started (struct acpi_ec*) ;
 int acpi_ec_submit_request (struct acpi_ec*) ;

__attribute__((used)) static bool acpi_ec_submit_flushable_request(struct acpi_ec *ec)
{
 if (!acpi_ec_started(ec))
  return 0;
 acpi_ec_submit_request(ec);
 return 1;
}
