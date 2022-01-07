
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
typedef int acpi_status ;
struct TYPE_5__ {int space_id; scalar_t__ address; } ;
struct TYPE_4__ {int space_id; scalar_t__ address; } ;
struct TYPE_6__ {int gpe0_block_length; int gpe1_block_length; int gpe1_base; int sci_interrupt; TYPE_2__ xgpe1_block; TYPE_1__ xgpe0_block; } ;


 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_REGISTER_WIDTH ;
 int ACPI_MTX_NAMESPACE ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ev_create_gpe_block (int ,scalar_t__,int ,int,int,int ,int *) ;
 TYPE_3__ acpi_gbl_FADT ;
 int acpi_gbl_fadt_gpe_device ;
 int * acpi_gbl_gpe_fadt_blocks ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int ev_gpe_initialize ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ev_gpe_initialize(void)
{
 u32 register_count0 = 0;
 u32 register_count1 = 0;
 u32 gpe_number_max = 0;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_gpe_initialize);

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT,
         "Initializing General Purpose Events (GPEs):\n"));

 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }
 if (acpi_gbl_FADT.gpe0_block_length &&
     acpi_gbl_FADT.xgpe0_block.address) {



  register_count0 = (u16)(acpi_gbl_FADT.gpe0_block_length / 2);
  gpe_number_max =
      (register_count0 * ACPI_GPE_REGISTER_WIDTH) - 1;



  status = acpi_ev_create_gpe_block(acpi_gbl_fadt_gpe_device,
        acpi_gbl_FADT.xgpe0_block.
        address,
        acpi_gbl_FADT.xgpe0_block.
        space_id, register_count0, 0,
        acpi_gbl_FADT.sci_interrupt,
        &acpi_gbl_gpe_fadt_blocks[0]);

  if (ACPI_FAILURE(status)) {
   ACPI_EXCEPTION((AE_INFO, status,
     "Could not create GPE Block 0"));
  }
 }

 if (acpi_gbl_FADT.gpe1_block_length &&
     acpi_gbl_FADT.xgpe1_block.address) {



  register_count1 = (u16)(acpi_gbl_FADT.gpe1_block_length / 2);



  if ((register_count0) &&
      (gpe_number_max >= acpi_gbl_FADT.gpe1_base)) {
   ACPI_ERROR((AE_INFO,
        "GPE0 block (GPE 0 to %u) overlaps the GPE1 block "
        "(GPE %u to %u) - Ignoring GPE1",
        gpe_number_max, acpi_gbl_FADT.gpe1_base,
        acpi_gbl_FADT.gpe1_base +
        ((register_count1 *
          ACPI_GPE_REGISTER_WIDTH) - 1)));



   register_count1 = 0;
  } else {


   status =
       acpi_ev_create_gpe_block(acpi_gbl_fadt_gpe_device,
           acpi_gbl_FADT.xgpe1_block.
           address,
           acpi_gbl_FADT.xgpe1_block.
           space_id, register_count1,
           acpi_gbl_FADT.gpe1_base,
           acpi_gbl_FADT.
           sci_interrupt,
           &acpi_gbl_gpe_fadt_blocks
           [1]);

   if (ACPI_FAILURE(status)) {
    ACPI_EXCEPTION((AE_INFO, status,
      "Could not create GPE Block 1"));
   }





   gpe_number_max = acpi_gbl_FADT.gpe1_base +
       ((register_count1 * ACPI_GPE_REGISTER_WIDTH) - 1);
  }
 }



 if ((register_count0 + register_count1) == 0) {



  ACPI_DEBUG_PRINT((ACPI_DB_INIT,
      "There are no GPE blocks defined in the FADT\n"));
  status = AE_OK;
  goto cleanup;
 }

cleanup:
 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
 return_ACPI_STATUS(AE_OK);
}
