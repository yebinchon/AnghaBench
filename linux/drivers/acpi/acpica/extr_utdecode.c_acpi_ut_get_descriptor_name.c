
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ACPI_DESC_TYPE_MAX ;
 size_t ACPI_GET_DESCRIPTOR_TYPE (void*) ;
 char const** acpi_gbl_desc_type_names ;

const char *acpi_ut_get_descriptor_name(void *object)
{

 if (!object) {
  return ("NULL OBJECT");
 }

 if (ACPI_GET_DESCRIPTOR_TYPE(object) > ACPI_DESC_TYPE_MAX) {
  return ("Not a Descriptor");
 }

 return (acpi_gbl_desc_type_names[ACPI_GET_DESCRIPTOR_TYPE(object)]);
}
