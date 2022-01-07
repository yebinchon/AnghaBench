
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_exec_context {int value; } ;
struct acpi_whea_header {int value; } ;


 int apei_exec_write_register (struct apei_exec_context*,struct acpi_whea_header*) ;

int apei_exec_write_register_value(struct apei_exec_context *ctx,
       struct acpi_whea_header *entry)
{
 int rc;

 ctx->value = entry->value;
 rc = apei_exec_write_register(ctx, entry);

 return rc;
}
