
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int ascii; } ;
struct acpi_table_desc {int pointer; TYPE_1__ signature; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_physical_address ;


 scalar_t__ ACPI_COMPARE_NAMESEG (TYPE_1__*,int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_INFO (char*) ;
 int ACPI_MTX_TABLES ;
 int ACPI_SIG_SSDT ;
 int ACPI_TABLE_EVENT_INSTALL ;
 scalar_t__ AE_CTRL_TERMINATE ;
 int AE_INFO ;
 scalar_t__ AE_OK ;
 scalar_t__ acpi_gbl_disable_ssdt_table_install ;
 scalar_t__ acpi_tb_acquire_temp_table (struct acpi_table_desc*,int ,int ) ;
 int acpi_tb_install_table_with_override (struct acpi_table_desc*,int ,int *) ;
 int acpi_tb_notify_table (int ,int ) ;
 int acpi_tb_release_temp_table (struct acpi_table_desc*) ;
 int acpi_tb_uninstall_table (struct acpi_table_desc*) ;
 scalar_t__ acpi_tb_verify_temp_table (struct acpi_table_desc*,int *,int *) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int return_ACPI_STATUS (scalar_t__) ;
 int tb_install_standard_table ;

acpi_status
acpi_tb_install_standard_table(acpi_physical_address address,
          u8 flags,
          u8 reload, u8 override, u32 *table_index)
{
 u32 i;
 acpi_status status = AE_OK;
 struct acpi_table_desc new_table_desc;

 ACPI_FUNCTION_TRACE(tb_install_standard_table);



 status = acpi_tb_acquire_temp_table(&new_table_desc, address, flags);
 if (ACPI_FAILURE(status)) {
  ACPI_ERROR((AE_INFO,
       "Could not acquire table length at %8.8X%8.8X",
       ACPI_FORMAT_UINT64(address)));
  return_ACPI_STATUS(status);
 }





 if (!reload &&
     acpi_gbl_disable_ssdt_table_install &&
     ACPI_COMPARE_NAMESEG(&new_table_desc.signature, ACPI_SIG_SSDT)) {
  ACPI_INFO(("Ignoring installation of %4.4s at %8.8X%8.8X",
      new_table_desc.signature.ascii,
      ACPI_FORMAT_UINT64(address)));
  goto release_and_exit;
 }



 (void)acpi_ut_acquire_mutex(ACPI_MTX_TABLES);



 status = acpi_tb_verify_temp_table(&new_table_desc, ((void*)0), &i);
 if (ACPI_FAILURE(status)) {
  if (status == AE_CTRL_TERMINATE) {
   acpi_tb_uninstall_table(&new_table_desc);
   (void)acpi_ut_release_mutex(ACPI_MTX_TABLES);
   *table_index = i;
   return_ACPI_STATUS(AE_OK);
  }
  goto unlock_and_exit;
 }



 acpi_tb_install_table_with_override(&new_table_desc, override,
         table_index);



 (void)acpi_ut_release_mutex(ACPI_MTX_TABLES);
 acpi_tb_notify_table(ACPI_TABLE_EVENT_INSTALL, new_table_desc.pointer);
 (void)acpi_ut_acquire_mutex(ACPI_MTX_TABLES);

unlock_and_exit:



 (void)acpi_ut_release_mutex(ACPI_MTX_TABLES);

release_and_exit:



 acpi_tb_release_temp_table(&new_table_desc);
 return_ACPI_STATUS(status);
}
