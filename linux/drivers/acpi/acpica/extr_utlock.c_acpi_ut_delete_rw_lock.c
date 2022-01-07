
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_rw_lock {int * writer_mutex; int * reader_mutex; scalar_t__ num_readers; } ;


 int acpi_os_delete_mutex (int *) ;

void acpi_ut_delete_rw_lock(struct acpi_rw_lock *lock)
{

 acpi_os_delete_mutex(lock->reader_mutex);
 acpi_os_delete_mutex(lock->writer_mutex);

 lock->num_readers = 0;
 lock->reader_mutex = ((void*)0);
 lock->writer_mutex = ((void*)0);
}
