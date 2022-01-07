
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct acpi_evaluate_info {int dummy; } ;
struct acpi_device_walk_info {scalar_t__ device_count; scalar_t__ num_STA; scalar_t__ num_INI; TYPE_1__* evaluate_info; } ;
typedef int acpi_status ;
typedef int acpi_handle ;
struct TYPE_5__ {void* flags; int * parameters; void* relative_pathname; int prefix_node; } ;


 TYPE_1__* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_DB_EXEC ;
 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (TYPE_1__*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 void* ACPI_IGNORE_RETURN_VALUE ;
 int ACPI_NO_ADDRESS_SPACE_INIT ;
 int ACPI_NO_DEVICE_INIT ;
 scalar_t__ ACPI_OSI_WIN_2000 ;
 int ACPI_ROOT_OBJECT ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int FALSE ;
 void* METHOD_NAME__INI ;
 int TRUE ;
 int acpi_ev_initialize_op_regions () ;
 scalar_t__ acpi_gbl_osi_data ;
 int acpi_gbl_root_node ;
 int acpi_gbl_truncate_io_addresses ;
 int acpi_get_handle (int *,char*,int *) ;
 int acpi_ns_evaluate (TYPE_1__*) ;
 int acpi_ns_find_ini_methods ;
 int acpi_ns_init_one_device ;
 int acpi_ns_walk_namespace (int ,int ,int ,int ,int ,int *,struct acpi_device_walk_info*,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int ns_initialize_devices ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ns_initialize_devices(u32 flags)
{
 acpi_status status = AE_OK;
 struct acpi_device_walk_info info;
 acpi_handle handle;

 ACPI_FUNCTION_TRACE(ns_initialize_devices);

 if (!(flags & ACPI_NO_DEVICE_INIT)) {
  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "[Init] Initializing ACPI Devices\n"));



  info.device_count = 0;
  info.num_STA = 0;
  info.num_INI = 0;

  ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT,
          "Initializing Device/Processor/Thermal objects "
          "and executing _INI/_STA methods:\n"));



  status = acpi_ns_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
      ACPI_UINT32_MAX, FALSE,
      acpi_ns_find_ini_methods, ((void*)0),
      &info, ((void*)0));
  if (ACPI_FAILURE(status)) {
   goto error_exit;
  }



  info.evaluate_info =
      ACPI_ALLOCATE_ZEROED(sizeof(struct acpi_evaluate_info));
  if (!info.evaluate_info) {
   status = AE_NO_MEMORY;
   goto error_exit;
  }






  info.evaluate_info->prefix_node = acpi_gbl_root_node;
  info.evaluate_info->relative_pathname = METHOD_NAME__INI;
  info.evaluate_info->parameters = ((void*)0);
  info.evaluate_info->flags = ACPI_IGNORE_RETURN_VALUE;

  status = acpi_ns_evaluate(info.evaluate_info);
  if (ACPI_SUCCESS(status)) {
   info.num_INI++;
  }






  status = acpi_get_handle(((void*)0), "\\_SB", &handle);
  if (ACPI_SUCCESS(status)) {
   memset(info.evaluate_info, 0,
          sizeof(struct acpi_evaluate_info));
   info.evaluate_info->prefix_node = handle;
   info.evaluate_info->relative_pathname =
       METHOD_NAME__INI;
   info.evaluate_info->parameters = ((void*)0);
   info.evaluate_info->flags = ACPI_IGNORE_RETURN_VALUE;

   status = acpi_ns_evaluate(info.evaluate_info);
   if (ACPI_SUCCESS(status)) {
    info.num_INI++;
   }
  }
 }
 if (!(flags & ACPI_NO_ADDRESS_SPACE_INIT)) {
  ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
      "[Init] Executing _REG OpRegion methods\n"));

  status = acpi_ev_initialize_op_regions();
  if (ACPI_FAILURE(status)) {
   goto error_exit;
  }
 }

 if (!(flags & ACPI_NO_DEVICE_INIT)) {



  status = acpi_ns_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
      ACPI_UINT32_MAX, FALSE,
      acpi_ns_init_one_device, ((void*)0),
      &info, ((void*)0));






  if (acpi_gbl_osi_data >= ACPI_OSI_WIN_2000) {
   acpi_gbl_truncate_io_addresses = TRUE;
  }

  ACPI_FREE(info.evaluate_info);
  if (ACPI_FAILURE(status)) {
   goto error_exit;
  }

  ACPI_DEBUG_PRINT_RAW((ACPI_DB_INIT,
          "    Executed %u _INI methods requiring %u _STA executions "
          "(examined %u objects)\n",
          info.num_INI, info.num_STA,
          info.device_count));
 }

 return_ACPI_STATUS(status);

error_exit:
 ACPI_EXCEPTION((AE_INFO, status, "During device initialization"));
 return_ACPI_STATUS(status);
}
