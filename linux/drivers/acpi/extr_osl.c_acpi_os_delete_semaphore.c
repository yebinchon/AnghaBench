
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore {int wait_list; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 int ACPI_DB_MUTEX ;
 int ACPI_DEBUG_PRINT (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int BUG_ON (int) ;
 int kfree (struct semaphore*) ;
 int list_empty (int *) ;

acpi_status acpi_os_delete_semaphore(acpi_handle handle)
{
 struct semaphore *sem = (struct semaphore *)handle;

 if (!sem)
  return AE_BAD_PARAMETER;

 ACPI_DEBUG_PRINT((ACPI_DB_MUTEX, "Deleting semaphore[%p].\n", handle));

 BUG_ON(!list_empty(&sem->wait_list));
 kfree(sem);
 sem = ((void*)0);

 return AE_OK;
}
