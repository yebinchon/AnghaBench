
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_ec {int dummy; } ;


 int acpi_ec_remove_query_handlers (struct acpi_ec*,int,int ) ;

void acpi_ec_remove_query_handler(struct acpi_ec *ec, u8 query_bit)
{
 acpi_ec_remove_query_handlers(ec, 0, query_bit);
}
