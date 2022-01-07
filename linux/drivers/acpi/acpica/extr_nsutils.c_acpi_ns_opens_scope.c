
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t acpi_object_type ;


 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_NS_NEWSCOPE ;
 int ACPI_NS_NORMAL ;
 size_t ACPI_TYPE_LOCAL_MAX ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 scalar_t__* acpi_gbl_ns_properties ;

u32 acpi_ns_opens_scope(acpi_object_type type)
{
 ACPI_FUNCTION_ENTRY();

 if (type > ACPI_TYPE_LOCAL_MAX) {



  ACPI_WARNING((AE_INFO, "Invalid Object Type 0x%X", type));
  return (ACPI_NS_NORMAL);
 }

 return (((u32)acpi_gbl_ns_properties[type]) & ACPI_NS_NEWSCOPE);
}
