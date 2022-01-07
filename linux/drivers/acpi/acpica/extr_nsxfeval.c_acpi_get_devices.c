
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_get_devices_info {char const* hid; scalar_t__ user_function; void* context; } ;
typedef scalar_t__ acpi_walk_callback ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) (char const*,scalar_t__,void*,void**)) ;
 int ACPI_MTX_NAMESPACE ;
 int ACPI_NS_WALK_UNLOCK ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_DEVICE ;
 int ACPI_UINT32_MAX ;
 int AE_BAD_PARAMETER ;
 int acpi_ns_get_device_callback ;
 int acpi_ns_walk_namespace (int ,int ,int ,int ,int ,int *,struct acpi_get_devices_info*,void**) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_get_devices(const char *HID,
   acpi_walk_callback user_function,
   void *context, void **return_value)
{
 acpi_status status;
 struct acpi_get_devices_info info;

 ACPI_FUNCTION_TRACE(acpi_get_devices);



 if (!user_function) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }





 info.hid = HID;
 info.context = context;
 info.user_function = user_function;







 status = acpi_ut_acquire_mutex(ACPI_MTX_NAMESPACE);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 status = acpi_ns_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
     ACPI_UINT32_MAX, ACPI_NS_WALK_UNLOCK,
     acpi_ns_get_device_callback, ((void*)0),
     &info, return_value);

 (void)acpi_ut_release_mutex(ACPI_MTX_NAMESPACE);
 return_ACPI_STATUS(status);
}
