
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int ascii; } ;
struct acpi_table_desc {int flags; TYPE_1__ signature; scalar_t__ pointer; int address; int owner_id; } ;
typedef int acpi_status ;
struct TYPE_4__ {size_t current_table_count; struct acpi_table_desc* tables; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_INFO (char*) ;
 int ACPI_TABLE_IS_LOADED ;



 int ACPI_TABLE_ORIGIN_MASK ;
 TYPE_2__ acpi_gbl_root_table_list ;
 int acpi_os_printf (char*,...) ;
 int acpi_tb_print_table_header (int ,scalar_t__) ;
 int acpi_tb_validate_table (struct acpi_table_desc*) ;

void acpi_db_display_table_info(char *table_arg)
{
 u32 i;
 struct acpi_table_desc *table_desc;
 acpi_status status;



 acpi_os_printf("Idx ID  Status Type                    "
         "TableHeader (Sig, Address, Length, Misc)\n");



 for (i = 0; i < acpi_gbl_root_table_list.current_table_count; i++) {
  table_desc = &acpi_gbl_root_table_list.tables[i];



  acpi_os_printf("%3u %.2u ", i, table_desc->owner_id);



  if (!(table_desc->flags & ACPI_TABLE_IS_LOADED)) {
   acpi_os_printf("NotLoaded ");
  } else {
   acpi_os_printf(" Loaded ");
  }

  switch (table_desc->flags & ACPI_TABLE_ORIGIN_MASK) {
  case 130:

   acpi_os_printf("External/virtual ");
   break;

  case 129:

   acpi_os_printf("Internal/physical ");
   break;

  case 128:

   acpi_os_printf("Internal/virtual ");
   break;

  default:

   acpi_os_printf("INVALID TYPE    ");
   break;
  }



  status = acpi_tb_validate_table(table_desc);
  if (ACPI_FAILURE(status)) {
   return;
  }



  if (table_desc->pointer) {
   acpi_tb_print_table_header(table_desc->address,
         table_desc->pointer);
  } else {


   ACPI_INFO(("%4.4s - Table has been unloaded",
       table_desc->signature.ascii));
  }
 }
}
