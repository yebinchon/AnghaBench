
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef scalar_t__ acpi_size ;


 char* ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 int ACPI_DB_NAMES ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_namespace_node*) ;
 int ACPI_GET_FUNCTION_NAME ;
 int AE_INFO ;
 scalar_t__ acpi_ns_build_normalized_path (struct acpi_namespace_node*,char*,scalar_t__,int ) ;
 int ns_get_normalized_pathname ;
 int return_PTR (char*) ;

char *acpi_ns_get_normalized_pathname(struct acpi_namespace_node *node,
          u8 no_trailing)
{
 char *name_buffer;
 acpi_size size;

 ACPI_FUNCTION_TRACE_PTR(ns_get_normalized_pathname, node);



 size = acpi_ns_build_normalized_path(node, ((void*)0), 0, no_trailing);
 if (!size) {
  return_PTR(((void*)0));
 }



 name_buffer = ACPI_ALLOCATE_ZEROED(size);
 if (!name_buffer) {
  ACPI_ERROR((AE_INFO, "Could not allocate %u bytes", (u32)size));
  return_PTR(((void*)0));
 }



 (void)acpi_ns_build_normalized_path(node, name_buffer, size,
         no_trailing);

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_NAMES, "%s: Path \"%s\"\n",
         ACPI_GET_FUNCTION_NAME, name_buffer));

 return_PTR(name_buffer);
}
