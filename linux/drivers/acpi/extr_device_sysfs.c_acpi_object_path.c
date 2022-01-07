
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int ssize_t ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_FULL_PATHNAME ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;
 int kfree (scalar_t__) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t acpi_object_path(acpi_handle handle, char *buf)
{
 struct acpi_buffer path = {ACPI_ALLOCATE_BUFFER, ((void*)0)};
 int result;

 result = acpi_get_name(handle, ACPI_FULL_PATHNAME, &path);
 if (result)
  return result;

 result = sprintf(buf, "%s\n", (char *)path.pointer);
 kfree(path.pointer);
 return result;
}
