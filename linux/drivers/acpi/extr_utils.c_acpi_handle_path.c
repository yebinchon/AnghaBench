
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_buffer {char* pointer; int length; } ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_FULL_PATHNAME ;
 scalar_t__ AE_OK ;
 scalar_t__ acpi_get_name (int ,int ,struct acpi_buffer*) ;
 scalar_t__ in_interrupt () ;

__attribute__((used)) static char *acpi_handle_path(acpi_handle handle)
{
 struct acpi_buffer buffer = {
  .length = ACPI_ALLOCATE_BUFFER,
  .pointer = ((void*)0)
 };

 if (in_interrupt() ||
     acpi_get_name(handle, ACPI_FULL_PATHNAME, &buffer) != AE_OK)
  return ((void*)0);
 return buffer.pointer;
}
