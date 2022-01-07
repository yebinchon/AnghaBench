
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t acpi_object_type ;


 size_t ACPI_TYPE_INVALID ;
 char const* acpi_gbl_bad_type ;
 char const** acpi_gbl_ns_type_names ;

const char *acpi_ut_get_type_name(acpi_object_type type)
{

 if (type > ACPI_TYPE_INVALID) {
  return (acpi_gbl_bad_type);
 }

 return (acpi_gbl_ns_type_names[type]);
}
