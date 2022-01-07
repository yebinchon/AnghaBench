
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char* ascii; int integer; } ;
struct acpi_table_desc {int flags; int address; TYPE_1__ signature; int length; int pointer; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_BIOS_ERROR (int ) ;
 int ACPI_COMPARE_NAMESEG (TYPE_1__*,char*) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TABLE_IS_VERIFIED ;
 scalar_t__ AE_BAD_SIGNATURE ;
 scalar_t__ AE_CTRL_TERMINATE ;
 int AE_INFO ;
 scalar_t__ AE_NO_MEMORY ;
 scalar_t__ AE_OK ;
 scalar_t__ acpi_gbl_enable_table_validation ;
 scalar_t__ acpi_tb_check_duplication (struct acpi_table_desc*,int *) ;
 int acpi_tb_invalidate_table (struct acpi_table_desc*) ;
 scalar_t__ acpi_tb_validate_temp_table (struct acpi_table_desc*) ;
 scalar_t__ acpi_tb_verify_checksum (int ,int ) ;
 scalar_t__ acpi_ut_valid_nameseg (char*) ;
 int return_ACPI_STATUS (scalar_t__) ;
 int tb_verify_temp_table ;

acpi_status
acpi_tb_verify_temp_table(struct acpi_table_desc *table_desc,
     char *signature, u32 *table_index)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(tb_verify_temp_table);



 status = acpi_tb_validate_temp_table(table_desc);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 if (signature &&
     !ACPI_COMPARE_NAMESEG(&table_desc->signature, signature)) {
  ACPI_BIOS_ERROR((AE_INFO,
     "Invalid signature 0x%X for ACPI table, expected [%s]",
     table_desc->signature.integer, signature));
  status = AE_BAD_SIGNATURE;
  goto invalidate_and_exit;
 }

 if (acpi_gbl_enable_table_validation) {



  status =
      acpi_tb_verify_checksum(table_desc->pointer,
         table_desc->length);
  if (ACPI_FAILURE(status)) {
   ACPI_EXCEPTION((AE_INFO, AE_NO_MEMORY,
     "%4.4s 0x%8.8X%8.8X"
     " Attempted table install failed",
     acpi_ut_valid_nameseg(table_desc->
             signature.
             ascii) ?
     table_desc->signature.ascii : "????",
     ACPI_FORMAT_UINT64(table_desc->
          address)));

   goto invalidate_and_exit;
  }



  if (table_index) {
   status =
       acpi_tb_check_duplication(table_desc, table_index);
   if (ACPI_FAILURE(status)) {
    if (status != AE_CTRL_TERMINATE) {
     ACPI_EXCEPTION((AE_INFO, status,
       "%4.4s 0x%8.8X%8.8X"
       " Table is already loaded",
       acpi_ut_valid_nameseg
       (table_desc->signature.
        ascii) ? table_desc->
       signature.
       ascii : "????",
       ACPI_FORMAT_UINT64
       (table_desc->address)));
    }

    goto invalidate_and_exit;
   }
  }

  table_desc->flags |= ACPI_TABLE_IS_VERIFIED;
 }

 return_ACPI_STATUS(status);

invalidate_and_exit:
 acpi_tb_invalidate_table(table_desc);
 return_ACPI_STATUS(status);
}
