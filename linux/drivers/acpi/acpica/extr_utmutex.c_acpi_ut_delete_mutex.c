
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t acpi_mutex_handle ;
struct TYPE_2__ {int thread_id; int * mutex; } ;


 int ACPI_FUNCTION_TRACE_U32 (int ,size_t) ;
 int ACPI_MUTEX_NOT_ACQUIRED ;
 TYPE_1__* acpi_gbl_mutex_info ;
 int acpi_os_delete_mutex (int *) ;
 int return_VOID ;
 int ut_delete_mutex ;

__attribute__((used)) static void acpi_ut_delete_mutex(acpi_mutex_handle mutex_id)
{

 ACPI_FUNCTION_TRACE_U32(ut_delete_mutex, mutex_id);

 acpi_os_delete_mutex(acpi_gbl_mutex_info[mutex_id].mutex);

 acpi_gbl_mutex_info[mutex_id].mutex = ((void*)0);
 acpi_gbl_mutex_info[mutex_id].thread_id = ACPI_MUTEX_NOT_ACQUIRED;

 return_VOID;
}
