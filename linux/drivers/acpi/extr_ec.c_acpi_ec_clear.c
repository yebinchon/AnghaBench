
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct acpi_ec {int dummy; } ;


 int ACPI_EC_CLEAR_MAX ;
 int acpi_ec_query (struct acpi_ec*,scalar_t__*) ;
 int pr_info (char*,int) ;
 int pr_warn (char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void acpi_ec_clear(struct acpi_ec *ec)
{
 int i, status;
 u8 value = 0;

 for (i = 0; i < ACPI_EC_CLEAR_MAX; i++) {
  status = acpi_ec_query(ec, &value);
  if (status || !value)
   break;
 }
 if (unlikely(i == ACPI_EC_CLEAR_MAX))
  pr_warn("Warning: Maximum of %d stale EC events cleared\n", i);
 else
  pr_info("%d stale EC events cleared\n", i);
}
