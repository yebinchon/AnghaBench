
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {int dummy; } ;
typedef int acpi_size ;


 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (struct acpi_namespace_node*) ;
 int AE_INFO ;
 int FALSE ;
 int acpi_ns_build_normalized_path (struct acpi_namespace_node*,int *,int ,int ) ;

acpi_size acpi_ns_get_pathname_length(struct acpi_namespace_node *node)
{
 acpi_size size;



 if (ACPI_GET_DESCRIPTOR_TYPE(node) != ACPI_DESC_TYPE_NAMED) {
  ACPI_ERROR((AE_INFO,
       "Invalid/cached reference target node: %p, descriptor type %d",
       node, ACPI_GET_DESCRIPTOR_TYPE(node)));
  return (0);
 }

 size = acpi_ns_build_normalized_path(node, ((void*)0), 0, FALSE);
 return (size);
}
