
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef void* u16 ;
struct TYPE_3__ {int ascii; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;
struct acpi_gpe_walk_info {void* execute_by_owner_id; struct acpi_namespace_node* gpe_device; struct acpi_gpe_block_info* gpe_block; } ;
struct acpi_gpe_block_info {int gpe_count; int register_count; int block_base_number; struct acpi_gpe_block_info* event_info; struct acpi_gpe_block_info* register_info; void* initialized; struct acpi_namespace_node* node; int space_id; int address; } ;
typedef int acpi_status ;
struct TYPE_4__ {int sci_interrupt; } ;


 struct acpi_gpe_block_info* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (struct acpi_gpe_block_info*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_REGISTER_WIDTH ;
 int ACPI_NS_WALK_NO_UNLOCK ;
 int ACPI_TYPE_METHOD ;
 int ACPI_UINT32_MAX ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 void* FALSE ;
 int acpi_current_gpe_count ;
 int acpi_ev_create_gpe_info_blocks (struct acpi_gpe_block_info*) ;
 int acpi_ev_install_gpe_block (struct acpi_gpe_block_info*,int) ;
 int acpi_ev_match_gpe_method ;
 TYPE_2__ acpi_gbl_FADT ;
 void* acpi_gbl_all_gpes_initialized ;
 int acpi_ns_walk_namespace (int ,struct acpi_namespace_node*,int ,int ,int ,int *,struct acpi_gpe_walk_info*,int *) ;
 int ev_create_gpe_block ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_create_gpe_block(struct acpi_namespace_node *gpe_device,
    u64 address,
    u8 space_id,
    u32 register_count,
    u16 gpe_block_base_number,
    u32 interrupt_number,
    struct acpi_gpe_block_info **return_gpe_block)
{
 acpi_status status;
 struct acpi_gpe_block_info *gpe_block;
 struct acpi_gpe_walk_info walk_info;

 ACPI_FUNCTION_TRACE(ev_create_gpe_block);

 if (!register_count) {
  return_ACPI_STATUS(AE_OK);
 }



 gpe_block = ACPI_ALLOCATE_ZEROED(sizeof(struct acpi_gpe_block_info));
 if (!gpe_block) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 gpe_block->address = address;
 gpe_block->space_id = space_id;
 gpe_block->node = gpe_device;
 gpe_block->gpe_count = (u16)(register_count * ACPI_GPE_REGISTER_WIDTH);
 gpe_block->initialized = FALSE;
 gpe_block->register_count = register_count;
 gpe_block->block_base_number = gpe_block_base_number;





 status = acpi_ev_create_gpe_info_blocks(gpe_block);
 if (ACPI_FAILURE(status)) {
  ACPI_FREE(gpe_block);
  return_ACPI_STATUS(status);
 }



 status = acpi_ev_install_gpe_block(gpe_block, interrupt_number);
 if (ACPI_FAILURE(status)) {
  ACPI_FREE(gpe_block->register_info);
  ACPI_FREE(gpe_block->event_info);
  ACPI_FREE(gpe_block);
  return_ACPI_STATUS(status);
 }

 acpi_gbl_all_gpes_initialized = FALSE;



 walk_info.gpe_block = gpe_block;
 walk_info.gpe_device = gpe_device;
 walk_info.execute_by_owner_id = FALSE;

 status = acpi_ns_walk_namespace(ACPI_TYPE_METHOD, gpe_device,
     ACPI_UINT32_MAX, ACPI_NS_WALK_NO_UNLOCK,
     acpi_ev_match_gpe_method, ((void*)0),
     &walk_info, ((void*)0));



 if (return_gpe_block) {
  (*return_gpe_block) = gpe_block;
 }

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT,
         "    Initialized GPE %02X to %02X [%4.4s] %u regs on interrupt 0x%X%s\n",
         (u32)gpe_block->block_base_number,
         (u32)(gpe_block->block_base_number +
        (gpe_block->gpe_count - 1)),
         gpe_device->name.ascii, gpe_block->register_count,
         interrupt_number,
         interrupt_number ==
         acpi_gbl_FADT.sci_interrupt ? " (SCI)" : ""));



 acpi_current_gpe_count += gpe_block->gpe_count;
 return_ACPI_STATUS(AE_OK);
}
