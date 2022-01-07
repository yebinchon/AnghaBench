
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct acpi_table_header {int signature; int oem_table_id; int oem_id; } ;
typedef int acpi_status ;
struct TYPE_6__ {size_t current_table_count; TYPE_2__* tables; } ;
struct TYPE_5__ {TYPE_1__* pointer; int signature; } ;
struct TYPE_4__ {int * oem_table_id; int * oem_id; int * signature; } ;


 int ACPI_COPY_NAMESEG (int ,char*) ;
 int ACPI_DB_TABLES ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_TABLES ;
 scalar_t__ ACPI_NAMESEG_SIZE ;
 scalar_t__ ACPI_OEM_ID_SIZE ;
 scalar_t__ ACPI_OEM_TABLE_ID_SIZE ;
 int AE_AML_STRING_LIMIT ;
 int AE_BAD_SIGNATURE ;
 int AE_NOT_FOUND ;
 int AE_OK ;
 TYPE_3__ acpi_gbl_root_table_list ;
 int acpi_tb_validate_table (TYPE_2__*) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int acpi_ut_valid_nameseg (char*) ;
 scalar_t__ memcmp (int *,int ,scalar_t__) ;
 int memset (struct acpi_table_header*,int ,int) ;
 int return_ACPI_STATUS (int ) ;
 scalar_t__ strlen (char*) ;
 int strncpy (int ,char*,scalar_t__) ;
 int tb_find_table ;

acpi_status
acpi_tb_find_table(char *signature,
     char *oem_id, char *oem_table_id, u32 *table_index)
{
 acpi_status status = AE_OK;
 struct acpi_table_header header;
 u32 i;

 ACPI_FUNCTION_TRACE(tb_find_table);



 if (!acpi_ut_valid_nameseg(signature)) {
  return_ACPI_STATUS(AE_BAD_SIGNATURE);
 }



 if ((strlen(oem_id) > ACPI_OEM_ID_SIZE) ||
     (strlen(oem_table_id) > ACPI_OEM_TABLE_ID_SIZE)) {
  return_ACPI_STATUS(AE_AML_STRING_LIMIT);
 }



 memset(&header, 0, sizeof(struct acpi_table_header));
 ACPI_COPY_NAMESEG(header.signature, signature);
 strncpy(header.oem_id, oem_id, ACPI_OEM_ID_SIZE);
 strncpy(header.oem_table_id, oem_table_id, ACPI_OEM_TABLE_ID_SIZE);



 (void)acpi_ut_acquire_mutex(ACPI_MTX_TABLES);
 for (i = 0; i < acpi_gbl_root_table_list.current_table_count; ++i) {
  if (memcmp(&(acpi_gbl_root_table_list.tables[i].signature),
      header.signature, ACPI_NAMESEG_SIZE)) {



   continue;
  }



  if (!acpi_gbl_root_table_list.tables[i].pointer) {



   status =
       acpi_tb_validate_table(&acpi_gbl_root_table_list.
         tables[i]);
   if (ACPI_FAILURE(status)) {
    goto unlock_and_exit;
   }

   if (!acpi_gbl_root_table_list.tables[i].pointer) {
    continue;
   }
  }



  if (!memcmp
      (acpi_gbl_root_table_list.tables[i].pointer->signature,
       header.signature, ACPI_NAMESEG_SIZE) && (!oem_id[0]
             ||
             !memcmp
             (acpi_gbl_root_table_list.
              tables[i].
              pointer->oem_id,
              header.oem_id,
              ACPI_OEM_ID_SIZE))
      && (!oem_table_id[0]
   || !memcmp(acpi_gbl_root_table_list.tables[i].pointer->
       oem_table_id, header.oem_table_id,
       ACPI_OEM_TABLE_ID_SIZE))) {
   *table_index = i;

   ACPI_DEBUG_PRINT((ACPI_DB_TABLES,
       "Found table [%4.4s]\n",
       header.signature));
   goto unlock_and_exit;
  }
 }
 status = AE_NOT_FOUND;

unlock_and_exit:
 (void)acpi_ut_release_mutex(ACPI_MTX_TABLES);
 return_ACPI_STATUS(status);
}
