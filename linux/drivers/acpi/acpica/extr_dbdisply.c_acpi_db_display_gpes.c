
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct acpi_gpe_xrupt_info {struct acpi_gpe_xrupt_info* next; int interrupt_number; struct acpi_gpe_block_info* gpe_block_list_head; } ;
struct TYPE_5__ {int address; } ;
struct TYPE_4__ {int address; } ;
struct acpi_gpe_register_info {TYPE_2__ enable_address; TYPE_1__ status_address; int enable_for_wake; int enable_for_run; int base_gpe_number; } ;
struct acpi_gpe_notify_info {struct acpi_gpe_notify_info* next; } ;
struct TYPE_6__ {struct acpi_gpe_notify_info* notify_list; } ;
struct acpi_gpe_event_info {int flags; TYPE_3__ dispatch; int runtime_count; } ;
struct acpi_gpe_block_info {scalar_t__ node; size_t register_count; int gpe_count; struct acpi_gpe_block_info* next; int block_base_number; struct acpi_gpe_event_info* event_info; struct acpi_gpe_register_info* register_info; } ;
struct acpi_buffer {int length; char* pointer; } ;
typedef int buffer ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_FULL_PATHNAME_NO_TRAILING ;
 int ACPI_GPE_CAN_WAKE ;





 int ACPI_GPE_DISPATCH_TYPE (int) ;
 int ACPI_GPE_LEVEL_TRIGGERED ;
 int ACPI_GPE_REGISTER_WIDTH ;
 scalar_t__ acpi_gbl_fadt_gpe_device ;
 struct acpi_gpe_xrupt_info* acpi_gbl_gpe_xrupt_list_head ;
 int acpi_get_name (scalar_t__,int ,struct acpi_buffer*) ;
 int acpi_os_printf (char*,...) ;

void acpi_db_display_gpes(void)
{
 struct acpi_gpe_block_info *gpe_block;
 struct acpi_gpe_xrupt_info *gpe_xrupt_info;
 struct acpi_gpe_event_info *gpe_event_info;
 struct acpi_gpe_register_info *gpe_register_info;
 char *gpe_type;
 struct acpi_gpe_notify_info *notify;
 u32 gpe_index;
 u32 block = 0;
 u32 i;
 u32 j;
 u32 count;
 char buffer[80];
 struct acpi_buffer ret_buf;
 acpi_status status;

 ret_buf.length = sizeof(buffer);
 ret_buf.pointer = buffer;

 block = 0;



 gpe_xrupt_info = acpi_gbl_gpe_xrupt_list_head;
 while (gpe_xrupt_info) {
  gpe_block = gpe_xrupt_info->gpe_block_list_head;
  while (gpe_block) {
   status = acpi_get_name(gpe_block->node,
            ACPI_FULL_PATHNAME_NO_TRAILING,
            &ret_buf);
   if (ACPI_FAILURE(status)) {
    acpi_os_printf
        ("Could not convert name to pathname\n");
   }

   if (gpe_block->node == acpi_gbl_fadt_gpe_device) {
    gpe_type = "FADT-defined GPE block";
   } else {
    gpe_type = "GPE Block Device";
   }

   acpi_os_printf
       ("\nBlock %u - Info %p  DeviceNode %p [%s] - %s\n",
        block, gpe_block, gpe_block->node, buffer,
        gpe_type);

   acpi_os_printf("    Registers:    %u (%u GPEs)\n",
           gpe_block->register_count,
           gpe_block->gpe_count);

   acpi_os_printf
       ("    GPE range:    0x%X to 0x%X on interrupt %u\n",
        gpe_block->block_base_number,
        gpe_block->block_base_number +
        (gpe_block->gpe_count - 1),
        gpe_xrupt_info->interrupt_number);

   acpi_os_printf
       ("    RegisterInfo: %p  Status %8.8X%8.8X Enable %8.8X%8.8X\n",
        gpe_block->register_info,
        ACPI_FORMAT_UINT64(gpe_block->register_info->
      status_address.address),
        ACPI_FORMAT_UINT64(gpe_block->register_info->
      enable_address.address));

   acpi_os_printf("  EventInfo:    %p\n",
           gpe_block->event_info);



   for (i = 0; i < gpe_block->register_count; i++) {
    gpe_register_info =
        &gpe_block->register_info[i];

    acpi_os_printf("    Reg %u: (GPE %.2X-%.2X)  "
            "RunEnable %2.2X WakeEnable %2.2X"
            " Status %8.8X%8.8X Enable %8.8X%8.8X\n",
            i,
            gpe_register_info->
            base_gpe_number,
            gpe_register_info->
            base_gpe_number +
            (ACPI_GPE_REGISTER_WIDTH - 1),
            gpe_register_info->
            enable_for_run,
            gpe_register_info->
            enable_for_wake,
            ACPI_FORMAT_UINT64
            (gpe_register_info->
      status_address.address),
            ACPI_FORMAT_UINT64
            (gpe_register_info->
      enable_address.address));



    for (j = 0; j < ACPI_GPE_REGISTER_WIDTH; j++) {
     gpe_index =
         (i * ACPI_GPE_REGISTER_WIDTH) + j;
     gpe_event_info =
         &gpe_block->event_info[gpe_index];

     if (ACPI_GPE_DISPATCH_TYPE
         (gpe_event_info->flags) ==
         130) {



      continue;
     }

     acpi_os_printf
         ("        GPE %.2X: %p  RunRefs %2.2X Flags %2.2X (",
          gpe_block->block_base_number +
          gpe_index, gpe_event_info,
          gpe_event_info->runtime_count,
          gpe_event_info->flags);



     if (gpe_event_info->
         flags & ACPI_GPE_LEVEL_TRIGGERED) {
      acpi_os_printf("Level, ");
     } else {
      acpi_os_printf("Edge, ");
     }

     if (gpe_event_info->
         flags & ACPI_GPE_CAN_WAKE) {
      acpi_os_printf("CanWake, ");
     } else {
      acpi_os_printf("RunOnly, ");
     }

     switch (ACPI_GPE_DISPATCH_TYPE
      (gpe_event_info->flags)) {
     case 130:

      acpi_os_printf("NotUsed");
      break;

     case 131:

      acpi_os_printf("Method");
      break;

     case 132:

      acpi_os_printf("Handler");
      break;

     case 129:

      count = 0;
      notify =
          gpe_event_info->dispatch.
          notify_list;
      while (notify) {
       count++;
       notify = notify->next;
      }

      acpi_os_printf
          ("Implicit Notify on %u devices",
           count);
      break;

     case 128:

      acpi_os_printf("RawHandler");
      break;

     default:

      acpi_os_printf("UNKNOWN: %X",
              ACPI_GPE_DISPATCH_TYPE
              (gpe_event_info->
        flags));
      break;
     }

     acpi_os_printf(")\n");
    }
   }

   block++;
   gpe_block = gpe_block->next;
  }

  gpe_xrupt_info = gpe_xrupt_info->next;
 }
}
