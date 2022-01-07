
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_exec_context {int value; int ip; } ;
struct acpi_whea_header {int dummy; } ;


 int APEI_EXEC_SET_IP ;

__attribute__((used)) static int erst_exec_goto(struct apei_exec_context *ctx,
     struct acpi_whea_header *entry)
{
 ctx->ip = ctx->value;
 return APEI_EXEC_SET_IP;
}
