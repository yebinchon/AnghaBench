
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct acpi_gpe_block_info {struct acpi_gpe_block_info* event_info; struct acpi_gpe_block_info* register_info; scalar_t__ gpe_count; TYPE_2__* previous; TYPE_1__* next; TYPE_3__* xrupt_block; } ;
typedef int acpi_status ;
typedef int acpi_cpu_flags ;
struct TYPE_7__ {TYPE_1__* gpe_block_list_head; } ;
struct TYPE_6__ {TYPE_1__* next; } ;
struct TYPE_5__ {TYPE_2__* previous; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (struct acpi_gpe_block_info*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_EVENTS ;
 int acpi_current_gpe_count ;
 int acpi_ev_delete_gpe_xrupt (TYPE_3__*) ;
 int acpi_gbl_gpe_lock ;
 int acpi_hw_disable_gpe_block (TYPE_3__*,struct acpi_gpe_block_info*,int *) ;
 int acpi_os_acquire_lock (int ) ;
 int acpi_os_release_lock (int ,int ) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int ev_install_gpe_block ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ev_delete_gpe_block(struct acpi_gpe_block_info *gpe_block)
{
 acpi_status status;
 acpi_cpu_flags flags;

 ACPI_FUNCTION_TRACE(ev_install_gpe_block);

 status = acpi_ut_acquire_mutex(ACPI_MTX_EVENTS);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 status =
     acpi_hw_disable_gpe_block(gpe_block->xrupt_block, gpe_block, ((void*)0));

 if (!gpe_block->previous && !gpe_block->next) {



  status = acpi_ev_delete_gpe_xrupt(gpe_block->xrupt_block);
  if (ACPI_FAILURE(status)) {
   goto unlock_and_exit;
  }
 } else {


  flags = acpi_os_acquire_lock(acpi_gbl_gpe_lock);
  if (gpe_block->previous) {
   gpe_block->previous->next = gpe_block->next;
  } else {
   gpe_block->xrupt_block->gpe_block_list_head =
       gpe_block->next;
  }

  if (gpe_block->next) {
   gpe_block->next->previous = gpe_block->previous;
  }

  acpi_os_release_lock(acpi_gbl_gpe_lock, flags);
 }

 acpi_current_gpe_count -= gpe_block->gpe_count;



 ACPI_FREE(gpe_block->register_info);
 ACPI_FREE(gpe_block->event_info);
 ACPI_FREE(gpe_block);

unlock_and_exit:
 status = acpi_ut_release_mutex(ACPI_MTX_EVENTS);
 return_ACPI_STATUS(status);
}
