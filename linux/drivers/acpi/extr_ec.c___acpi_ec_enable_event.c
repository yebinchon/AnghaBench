
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int flags; } ;


 int EC_FLAGS_QUERY_ENABLED ;
 int advance_transaction (struct acpi_ec*) ;
 int ec_log_drv (char*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline void __acpi_ec_enable_event(struct acpi_ec *ec)
{
 if (!test_and_set_bit(EC_FLAGS_QUERY_ENABLED, &ec->flags))
  ec_log_drv("event unblocked");




 advance_transaction(ec);
}
