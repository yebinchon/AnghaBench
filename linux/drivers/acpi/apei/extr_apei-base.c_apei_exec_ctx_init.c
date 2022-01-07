
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct apei_exec_ins_type {int dummy; } ;
struct apei_exec_context {void* entries; struct acpi_whea_header* action_table; void* instructions; struct apei_exec_ins_type* ins_table; } ;
struct acpi_whea_header {int dummy; } ;



void apei_exec_ctx_init(struct apei_exec_context *ctx,
   struct apei_exec_ins_type *ins_table,
   u32 instructions,
   struct acpi_whea_header *action_table,
   u32 entries)
{
 ctx->ins_table = ins_table;
 ctx->instructions = instructions;
 ctx->action_table = action_table;
 ctx->entries = entries;
}
