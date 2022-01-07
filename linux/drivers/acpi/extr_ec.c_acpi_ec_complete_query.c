
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int flags; } ;


 int ACPI_EC_COMMAND_QUERY ;
 int EC_FLAGS_QUERY_PENDING ;
 int acpi_ec_cmd_string (int ) ;
 int acpi_ec_unmask_gpe (struct acpi_ec*) ;
 int ec_dbg_evt (char*,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void acpi_ec_complete_query(struct acpi_ec *ec)
{
 if (test_and_clear_bit(EC_FLAGS_QUERY_PENDING, &ec->flags))
  ec_dbg_evt("Command(%s) unblocked",
      acpi_ec_cmd_string(ACPI_EC_COMMAND_QUERY));
 acpi_ec_unmask_gpe(ec);
}
