
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int flags; } ;


 int EC_FLAGS_STARTED ;
 int EC_FLAGS_STOPPED ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool acpi_ec_started(struct acpi_ec *ec)
{
 return test_bit(EC_FLAGS_STARTED, &ec->flags) &&
        !test_bit(EC_FLAGS_STOPPED, &ec->flags);
}
