
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct transaction {int rlen; int * rdata; int command; } ;
struct acpi_ec_query {struct transaction transaction; int work; } ;


 int ACPI_EC_COMMAND_QUERY ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int acpi_ec_event_processor ;
 struct acpi_ec_query* kzalloc (int,int ) ;

__attribute__((used)) static struct acpi_ec_query *acpi_ec_create_query(u8 *pval)
{
 struct acpi_ec_query *q;
 struct transaction *t;

 q = kzalloc(sizeof (struct acpi_ec_query), GFP_KERNEL);
 if (!q)
  return ((void*)0);
 INIT_WORK(&q->work, acpi_ec_event_processor);
 t = &q->transaction;
 t->command = ACPI_EC_COMMAND_QUERY;
 t->rdata = pval;
 t->rlen = 1;
 return q;
}
