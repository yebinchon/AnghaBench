
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
typedef int u32 ;
struct apei_resources {int ioport; int iomem; } ;
struct apei_exec_context {TYPE_1__* ins_table; } ;
struct acpi_generic_address {int space_id; } ;
struct acpi_whea_header {size_t instruction; struct acpi_generic_address register_region; } ;
struct TYPE_2__ {int flags; } ;




 int APEI_EXEC_INS_ACCESS_REGISTER ;
 int EINVAL ;
 int apei_check_gar (struct acpi_generic_address*,int *,int*) ;
 int apei_res_add (int *,int ,int) ;

__attribute__((used)) static int collect_res_callback(struct apei_exec_context *ctx,
    struct acpi_whea_header *entry,
    void *data)
{
 struct apei_resources *resources = data;
 struct acpi_generic_address *reg = &entry->register_region;
 u8 ins = entry->instruction;
 u32 access_bit_width;
 u64 paddr;
 int rc;

 if (!(ctx->ins_table[ins].flags & APEI_EXEC_INS_ACCESS_REGISTER))
  return 0;

 rc = apei_check_gar(reg, &paddr, &access_bit_width);
 if (rc)
  return rc;

 switch (reg->space_id) {
 case 128:
  return apei_res_add(&resources->iomem, paddr,
        access_bit_width / 8);
 case 129:
  return apei_res_add(&resources->ioport, paddr,
        access_bit_width / 8);
 default:
  return -EINVAL;
 }
}
