
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef scalar_t__ acpi_owner_id ;


 int ACPI_DB_VALUES ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_CACHES ;
 scalar_t__ ACPI_MUL_32 (scalar_t__) ;
 scalar_t__ ACPI_NUM_OWNERID_MASKS ;
 scalar_t__ ACPI_UINT32_MAX ;
 int AE_ALREADY_EXISTS ;
 int AE_INFO ;
 int AE_OWNER_ID_LIMIT ;
 scalar_t__ acpi_gbl_last_owner_id_index ;
 scalar_t__ acpi_gbl_next_owner_id_offset ;
 scalar_t__* acpi_gbl_owner_id_mask ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int return_ACPI_STATUS (int ) ;
 int ut_allocate_owner_id ;

acpi_status acpi_ut_allocate_owner_id(acpi_owner_id *owner_id)
{
 u32 i;
 u32 j;
 u32 k;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ut_allocate_owner_id);



 if (*owner_id) {
  ACPI_ERROR((AE_INFO,
       "Owner ID [0x%3.3X] already exists", *owner_id));
  return_ACPI_STATUS(AE_ALREADY_EXISTS);
 }



 status = acpi_ut_acquire_mutex(ACPI_MTX_CACHES);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }






 for (i = 0, j = acpi_gbl_last_owner_id_index;
      i < (ACPI_NUM_OWNERID_MASKS + 1); i++, j++) {
  if (j >= ACPI_NUM_OWNERID_MASKS) {
   j = 0;
  }

  for (k = acpi_gbl_next_owner_id_offset; k < 32; k++) {
   if (acpi_gbl_owner_id_mask[j] == ACPI_UINT32_MAX) {



    break;
   }







   if (!(acpi_gbl_owner_id_mask[j] & ((u32)1 << k))) {





    acpi_gbl_owner_id_mask[j] |= ((u32)1 << k);

    acpi_gbl_last_owner_id_index = (u8)j;
    acpi_gbl_next_owner_id_offset = (u8)(k + 1);







    *owner_id =
        (acpi_owner_id)((k + 1) + ACPI_MUL_32(j));

    ACPI_DEBUG_PRINT((ACPI_DB_VALUES,
        "Allocated OwnerId: 0x%3.3X\n",
        (unsigned int)*owner_id));
    goto exit;
   }
  }

  acpi_gbl_next_owner_id_offset = 0;
 }
 status = AE_OWNER_ID_LIMIT;
 ACPI_ERROR((AE_INFO,
      "Could not allocate new OwnerId (4095 max), AE_OWNER_ID_LIMIT"));

exit:
 (void)acpi_ut_release_mutex(ACPI_MTX_CACHES);
 return_ACPI_STATUS(status);
}
