
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int acpi_status ;
typedef scalar_t__ acpi_owner_id ;


 size_t ACPI_DIV_32 (scalar_t__) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 size_t ACPI_MOD_32 (scalar_t__) ;
 int ACPI_MTX_CACHES ;
 int AE_INFO ;
 size_t* acpi_gbl_owner_id_mask ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int return_VOID ;
 int ut_release_owner_id ;

void acpi_ut_release_owner_id(acpi_owner_id *owner_id_ptr)
{
 acpi_owner_id owner_id = *owner_id_ptr;
 acpi_status status;
 u32 index;
 u32 bit;

 ACPI_FUNCTION_TRACE_U32(ut_release_owner_id, owner_id);



 *owner_id_ptr = 0;



 if (owner_id == 0) {
  ACPI_ERROR((AE_INFO, "Invalid OwnerId: 0x%3.3X", owner_id));
  return_VOID;
 }



 status = acpi_ut_acquire_mutex(ACPI_MTX_CACHES);
 if (ACPI_FAILURE(status)) {
  return_VOID;
 }



 owner_id--;



 index = ACPI_DIV_32(owner_id);
 bit = (u32)1 << ACPI_MOD_32(owner_id);



 if (acpi_gbl_owner_id_mask[index] & bit) {
  acpi_gbl_owner_id_mask[index] ^= bit;
 } else {
  ACPI_ERROR((AE_INFO,
       "Attempted release of non-allocated OwnerId: 0x%3.3X",
       owner_id + 1));
 }

 (void)acpi_ut_release_mutex(ACPI_MTX_CACHES);
 return_VOID;
}
