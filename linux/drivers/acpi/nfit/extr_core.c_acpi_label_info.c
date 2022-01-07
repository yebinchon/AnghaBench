
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
struct acpi_buffer {int pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 union acpi_object* pkg_to_buf (int ) ;

__attribute__((used)) static union acpi_object *acpi_label_info(acpi_handle handle)
{
 acpi_status rc;
 struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER, ((void*)0) };

 rc = acpi_evaluate_object(handle, "_LSI", ((void*)0), &buf);
 if (ACPI_FAILURE(rc))
  return ((void*)0);
 return pkg_to_buf(buf.pointer);
}
