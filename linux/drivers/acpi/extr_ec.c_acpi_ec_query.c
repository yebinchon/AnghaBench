
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct acpi_ec_query {int work; int handler; int transaction; } ;
struct acpi_ec {int dummy; } ;


 int EBUSY ;
 int ENODATA ;
 int ENOMEM ;
 struct acpi_ec_query* acpi_ec_create_query (scalar_t__*) ;
 int acpi_ec_delete_query (struct acpi_ec_query*) ;
 int acpi_ec_get_query_handler_by_value (struct acpi_ec*,scalar_t__) ;
 int acpi_ec_transaction (struct acpi_ec*,int *) ;
 int ec_dbg_evt (char*,scalar_t__) ;
 int ec_query_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int acpi_ec_query(struct acpi_ec *ec, u8 *data)
{
 u8 value = 0;
 int result;
 struct acpi_ec_query *q;

 q = acpi_ec_create_query(&value);
 if (!q)
  return -ENOMEM;






 result = acpi_ec_transaction(ec, &q->transaction);
 if (!value)
  result = -ENODATA;
 if (result)
  goto err_exit;

 q->handler = acpi_ec_get_query_handler_by_value(ec, value);
 if (!q->handler) {
  result = -ENODATA;
  goto err_exit;
 }
 ec_dbg_evt("Query(0x%02x) scheduled", value);
 if (!queue_work(ec_query_wq, &q->work)) {
  ec_dbg_evt("Query(0x%02x) overlapped", value);
  result = -EBUSY;
 }

err_exit:
 if (result)
  acpi_ec_delete_query(q);
 if (data)
  *data = value;
 return result;
}
