
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec_query {scalar_t__ handler; } ;


 int acpi_ec_put_query_handler (scalar_t__) ;
 int kfree (struct acpi_ec_query*) ;

__attribute__((used)) static void acpi_ec_delete_query(struct acpi_ec_query *q)
{
 if (q) {
  if (q->handler)
   acpi_ec_put_query_handler(q->handler);
  kfree(q);
 }
}
