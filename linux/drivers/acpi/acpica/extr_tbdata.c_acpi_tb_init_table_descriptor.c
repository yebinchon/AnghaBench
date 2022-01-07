
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct acpi_table_header {int signature; int length; } ;
struct TYPE_2__ {int ascii; } ;
struct acpi_table_desc {TYPE_1__ signature; int flags; int length; int address; } ;
typedef int acpi_physical_address ;


 int ACPI_MOVE_32_TO_32 (int ,int ) ;
 int memset (struct acpi_table_desc*,int ,int) ;

void
acpi_tb_init_table_descriptor(struct acpi_table_desc *table_desc,
         acpi_physical_address address,
         u8 flags, struct acpi_table_header *table)
{





 memset(table_desc, 0, sizeof(struct acpi_table_desc));
 table_desc->address = address;
 table_desc->length = table->length;
 table_desc->flags = flags;
 ACPI_MOVE_32_TO_32(table_desc->signature.ascii, table->signature);
}
