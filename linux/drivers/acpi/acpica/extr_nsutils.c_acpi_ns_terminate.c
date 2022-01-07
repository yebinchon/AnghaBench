
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 int acpi_gbl_root_node ;
 int acpi_ns_delete_namespace_subtree (int ) ;
 int acpi_ns_delete_node (int ) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int ns_terminate ;
 int return_VOID ;

void acpi_ns_terminate(void)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ns_terminate);





 acpi_ns_delete_namespace_subtree(acpi_gbl_root_node);



 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return_VOID;
 }

 acpi_ns_delete_node(acpi_gbl_root_node);
 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Namespace freed\n"));
 return_VOID;
}
