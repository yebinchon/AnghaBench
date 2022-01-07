
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec_query_handler {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct acpi_ec_query_handler *
acpi_ec_get_query_handler(struct acpi_ec_query_handler *handler)
{
 if (handler)
  kref_get(&handler->kref);
 return handler;
}
