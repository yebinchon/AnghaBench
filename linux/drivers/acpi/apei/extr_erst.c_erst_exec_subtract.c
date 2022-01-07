
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_exec_context {scalar_t__ var2; int var1; } ;
struct acpi_whea_header {int dummy; } ;



__attribute__((used)) static int erst_exec_subtract(struct apei_exec_context *ctx,
         struct acpi_whea_header *entry)
{
 ctx->var1 -= ctx->var2;
 return 0;
}
