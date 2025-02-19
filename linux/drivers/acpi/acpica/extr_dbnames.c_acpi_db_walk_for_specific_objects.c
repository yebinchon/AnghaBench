
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_walk_info {int count; } ;
struct acpi_buffer {scalar_t__ pointer; int length; } ;
typedef int acpi_status ;
typedef char* acpi_handle ;


 int ACPI_ALLOCATE_LOCAL_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (scalar_t__) ;
 int AE_OK ;
 int TRUE ;
 int acpi_ns_dump_one_object (char*,int ,struct acpi_walk_info*,int *) ;
 int acpi_ns_handle_to_pathname (char*,struct acpi_buffer*,int ) ;
 int acpi_os_printf (char*,char*) ;

__attribute__((used)) static acpi_status
acpi_db_walk_for_specific_objects(acpi_handle obj_handle,
      u32 nesting_level,
      void *context, void **return_value)
{
 struct acpi_walk_info *info = (struct acpi_walk_info *)context;
 struct acpi_buffer buffer;
 acpi_status status;

 info->count++;



 buffer.length = ACPI_ALLOCATE_LOCAL_BUFFER;
 status = acpi_ns_handle_to_pathname(obj_handle, &buffer, TRUE);
 if (ACPI_FAILURE(status)) {
  acpi_os_printf("Could Not get pathname for object %p\n",
          obj_handle);
  return (AE_OK);
 }

 acpi_os_printf("%32s", (char *)buffer.pointer);
 ACPI_FREE(buffer.pointer);



 (void)acpi_ns_dump_one_object(obj_handle, nesting_level, info, ((void*)0));
 return (AE_OK);
}
