
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_init_walk_info {int op_region_count; int method_count; int object_count; } ;
typedef int acpi_status ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DB_EXEC ;
 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ns_init_one_object ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,struct acpi_init_walk_info*,int *) ;
 int memset (struct acpi_init_walk_info*,int ,int) ;
 int ns_initialize_objects ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ns_initialize_objects(void)
{
 acpi_status status;
 struct acpi_init_walk_info info;

 ACPI_FUNCTION_TRACE(ns_initialize_objects);

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
     "[Init] Completing Initialization of ACPI Objects\n"));
 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "**** Starting initialization of namespace objects ****\n"));
 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT,
         "Final data object initialization: "));



 memset(&info, 0, sizeof(struct acpi_init_walk_info));
 status = acpi_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
         ACPI_UINT32_MAX, acpi_ns_init_one_object,
         ((void*)0), &info, ((void*)0));
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "During WalkNamespace"));
 }

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT,
         "Namespace contains %u (0x%X) objects\n",
         info.object_count, info.object_count));

 ACPI_DEBUG_PRINT((ACPI_DB_DISPATCH,
     "%u Control Methods found\n%u Op Regions found\n",
     info.method_count, info.op_region_count));

 return_ACPI_STATUS(AE_OK);
}
