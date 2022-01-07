
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct acpi_walk_info {int display_type; int debug_level; int owner_id; scalar_t__ count; } ;
struct TYPE_2__ {char* ascii; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;
struct acpi_buffer {scalar_t__ pointer; int length; } ;
typedef int acpi_status ;
typedef char* acpi_handle ;


 int ACPI_ALLOCATE_LOCAL_BUFFER ;
 int ACPI_DISPLAY_SHORT ;
 int ACPI_DISPLAY_SUMMARY ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (scalar_t__) ;
 int ACPI_OWNER_ID_MAX ;
 int ACPI_UINT32_MAX ;
 int AE_OK ;
 int TRUE ;
 int acpi_ns_dump_one_object (char*,int,struct acpi_walk_info*,int *) ;
 int acpi_ns_handle_to_pathname (char*,struct acpi_buffer*,int ) ;
 int acpi_os_printf (char*,char*) ;

__attribute__((used)) static acpi_status
acpi_db_walk_and_match_name(acpi_handle obj_handle,
       u32 nesting_level,
       void *context, void **return_value)
{
 acpi_status status;
 char *requested_name = (char *)context;
 u32 i;
 struct acpi_buffer buffer;
 struct acpi_walk_info info;



 for (i = 0; i < 4; i++) {



  if ((requested_name[i] != '?') &&
      (requested_name[i] != ((struct acpi_namespace_node *)
        obj_handle)->name.ascii[i])) {



   return (AE_OK);
  }
 }



 buffer.length = ACPI_ALLOCATE_LOCAL_BUFFER;
 status = acpi_ns_handle_to_pathname(obj_handle, &buffer, TRUE);
 if (ACPI_FAILURE(status)) {
  acpi_os_printf("Could Not get pathname for object %p\n",
          obj_handle);
 } else {
  info.count = 0;
  info.owner_id = ACPI_OWNER_ID_MAX;
  info.debug_level = ACPI_UINT32_MAX;
  info.display_type = ACPI_DISPLAY_SUMMARY | ACPI_DISPLAY_SHORT;

  acpi_os_printf("%32s", (char *)buffer.pointer);
  (void)acpi_ns_dump_one_object(obj_handle, nesting_level, &info,
           ((void*)0));
  ACPI_FREE(buffer.pointer);
 }

 return (AE_OK);
}
