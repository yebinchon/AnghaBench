
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_8__ {size_t count; TYPE_3__* ids; } ;
struct TYPE_6__ {int string; } ;
struct TYPE_5__ {int string; } ;
struct acpi_device_info {int valid; TYPE_4__ compatible_id_list; TYPE_2__ unique_id; TYPE_1__ hardware_id; int * lowest_dstates; int * highest_dstates; int flags; int address; } ;
typedef int acpi_status ;
typedef int acpi_size ;
typedef int acpi_handle ;
struct TYPE_7__ {int string; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 size_t ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_FREE (struct acpi_device_info*) ;
 int ACPI_TO_POINTER (int ) ;
 int ACPI_VALID_CID ;
 int ACPI_VALID_HID ;
 int ACPI_VALID_UID ;
 int acpi_format_exception (int ) ;
 int acpi_get_object_info (int ,struct acpi_device_info**) ;
 int acpi_os_printf (char*,size_t,...) ;
 int strtoul (char*,int *,int) ;

void acpi_db_display_object_type(char *object_arg)
{
 acpi_size arg;
 acpi_handle handle;
 struct acpi_device_info *info;
 acpi_status status;
 u32 i;

 arg = strtoul(object_arg, ((void*)0), 16);
 handle = ACPI_TO_POINTER(arg);

 status = acpi_get_object_info(handle, &info);
 if (ACPI_FAILURE(status)) {
  acpi_os_printf("Could not get object info, %s\n",
          acpi_format_exception(status));
  return;
 }

 acpi_os_printf("ADR: %8.8X%8.8X, Flags: %X\n",
         ACPI_FORMAT_UINT64(info->address), info->flags);

 acpi_os_printf("S1D-%2.2X S2D-%2.2X S3D-%2.2X S4D-%2.2X\n",
         info->highest_dstates[0], info->highest_dstates[1],
         info->highest_dstates[2], info->highest_dstates[3]);

 acpi_os_printf("S0W-%2.2X S1W-%2.2X S2W-%2.2X S3W-%2.2X S4W-%2.2X\n",
         info->lowest_dstates[0], info->lowest_dstates[1],
         info->lowest_dstates[2], info->lowest_dstates[3],
         info->lowest_dstates[4]);

 if (info->valid & ACPI_VALID_HID) {
  acpi_os_printf("HID: %s\n", info->hardware_id.string);
 }

 if (info->valid & ACPI_VALID_UID) {
  acpi_os_printf("UID: %s\n", info->unique_id.string);
 }

 if (info->valid & ACPI_VALID_CID) {
  for (i = 0; i < info->compatible_id_list.count; i++) {
   acpi_os_printf("CID %u: %s\n", i,
           info->compatible_id_list.ids[i].string);
  }
 }

 ACPI_FREE(info);
}
