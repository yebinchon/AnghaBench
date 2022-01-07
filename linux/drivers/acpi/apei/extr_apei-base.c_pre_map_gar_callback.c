
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct apei_exec_context {TYPE_1__* ins_table; } ;
struct acpi_whea_header {size_t instruction; int register_region; } ;
struct TYPE_2__ {int flags; } ;


 int APEI_EXEC_INS_ACCESS_REGISTER ;
 int apei_map_generic_address (int *) ;

__attribute__((used)) static int pre_map_gar_callback(struct apei_exec_context *ctx,
    struct acpi_whea_header *entry,
    void *data)
{
 u8 ins = entry->instruction;

 if (ctx->ins_table[ins].flags & APEI_EXEC_INS_ACCESS_REGISTER)
  return apei_map_generic_address(&entry->register_region);

 return 0;
}
