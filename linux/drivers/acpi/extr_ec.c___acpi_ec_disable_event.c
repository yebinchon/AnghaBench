
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int flags; } ;


 int EC_FLAGS_QUERY_ENABLED ;
 int ec_log_drv (char*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static inline void __acpi_ec_disable_event(struct acpi_ec *ec)
{
 if (test_and_clear_bit(EC_FLAGS_QUERY_ENABLED, &ec->flags))
  ec_log_drv("event blocked");
}
