
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int os_mutex; } ;
union acpi_operand_object {TYPE_1__ mutex; } ;
typedef int u16 ;
typedef int acpi_string ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_os_acquire_mutex (int ,int ) ;
 int acpi_ut_get_mutex_object (int ,int ,union acpi_operand_object**) ;

acpi_status
acpi_acquire_mutex(acpi_handle handle, acpi_string pathname, u16 timeout)
{
 acpi_status status;
 union acpi_operand_object *mutex_obj;



 status = acpi_ut_get_mutex_object(handle, pathname, &mutex_obj);
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 status = acpi_os_acquire_mutex(mutex_obj->mutex.os_mutex, timeout);
 return (status);
}
