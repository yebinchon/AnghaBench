
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_physical_address ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int TRUE ;
 int acpi_gbl_root_node ;
 int acpi_tb_install_standard_table (int ,int ,int ,int ,int *) ;
 int acpi_tb_load_table (int ,int ) ;
 int return_ACPI_STATUS (int ) ;
 int tb_install_and_load_table ;

acpi_status
acpi_tb_install_and_load_table(acpi_physical_address address,
          u8 flags, u8 override, u32 *table_index)
{
 acpi_status status;
 u32 i;

 ACPI_FUNCTION_TRACE(tb_install_and_load_table);



 status = acpi_tb_install_standard_table(address, flags, TRUE,
      override, &i);
 if (ACPI_FAILURE(status)) {
  goto exit;
 }

 status = acpi_tb_load_table(i, acpi_gbl_root_node);

exit:
 *table_index = i;
 return_ACPI_STATUS(status);
}
