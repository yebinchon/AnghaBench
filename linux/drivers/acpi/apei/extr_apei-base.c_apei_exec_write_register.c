
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_exec_context {int value; } ;
struct acpi_whea_header {int dummy; } ;


 int __apei_exec_write_register (struct acpi_whea_header*,int ) ;

int apei_exec_write_register(struct apei_exec_context *ctx,
        struct acpi_whea_header *entry)
{
 return __apei_exec_write_register(entry, ctx->value);
}
