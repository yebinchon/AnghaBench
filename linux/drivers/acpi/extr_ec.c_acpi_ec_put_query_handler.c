
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec_query_handler {int kref; } ;


 int acpi_ec_query_handler_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void acpi_ec_put_query_handler(struct acpi_ec_query_handler *handler)
{
 kref_put(&handler->kref, acpi_ec_query_handler_release);
}
