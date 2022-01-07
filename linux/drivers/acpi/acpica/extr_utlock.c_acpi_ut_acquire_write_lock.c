
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_rw_lock {int writer_mutex; } ;
typedef int acpi_status ;


 int ACPI_WAIT_FOREVER ;
 int acpi_os_acquire_mutex (int ,int ) ;

acpi_status acpi_ut_acquire_write_lock(struct acpi_rw_lock *lock)
{
 acpi_status status;

 status = acpi_os_acquire_mutex(lock->writer_mutex, ACPI_WAIT_FOREVER);
 return (status);
}
