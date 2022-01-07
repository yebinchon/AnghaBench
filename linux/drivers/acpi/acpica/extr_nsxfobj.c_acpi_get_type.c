
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {int type; } ;
typedef int acpi_status ;
typedef int acpi_object_type ;
typedef scalar_t__ acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 scalar_t__ ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 struct acpi_namespace_node* acpi_ns_validate_handle (scalar_t__) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;

acpi_status acpi_get_type(acpi_handle handle, acpi_object_type *ret_type)
{
 struct acpi_namespace_node *node;
 acpi_status status;



 if (!ret_type) {
  return (AE_BAD_PARAMETER);
 }



 if (handle == ACPI_ROOT_OBJECT) {
  *ret_type = ACPI_TYPE_ANY;
  return (AE_OK);
 }

 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 node = acpi_ns_validate_handle(handle);
 if (!node) {
  (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
  return (AE_BAD_PARAMETER);
 }

 *ret_type = node->type;

 status = acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
 return (status);
}
