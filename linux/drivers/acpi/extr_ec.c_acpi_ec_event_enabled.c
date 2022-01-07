
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int flags; } ;


 int EC_FLAGS_QUERY_ENABLED ;
 int EC_FLAGS_STARTED ;
 int acpi_ec_started (struct acpi_ec*) ;
 scalar_t__ ec_freeze_events ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool acpi_ec_event_enabled(struct acpi_ec *ec)
{





 if (!test_bit(EC_FLAGS_QUERY_ENABLED, &ec->flags))
  return 0;
 if (ec_freeze_events)
  return acpi_ec_started(ec);
 else
  return test_bit(EC_FLAGS_STARTED, &ec->flags);
}
