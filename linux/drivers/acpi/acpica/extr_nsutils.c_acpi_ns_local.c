
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t acpi_object_type ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NS_LOCAL ;
 int ACPI_NS_NORMAL ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int* acpi_gbl_ns_properties ;
 int acpi_ut_valid_object_type (size_t) ;
 int ns_local ;
 int return_UINT32 (int) ;

u32 acpi_ns_local(acpi_object_type type)
{
 ACPI_FUNCTION_TRACE(ns_local);

 if (!acpi_ut_valid_object_type(type)) {



  ACPI_WARNING((AE_INFO, "Invalid Object Type 0x%X", type));
  return_UINT32(ACPI_NS_NORMAL);
 }

 return_UINT32(acpi_gbl_ns_properties[type] & ACPI_NS_LOCAL);
}
