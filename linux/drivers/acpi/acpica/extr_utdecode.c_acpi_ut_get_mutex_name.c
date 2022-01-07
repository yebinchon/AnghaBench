
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t ACPI_MAX_MUTEX ;
 char const** acpi_gbl_mutex_names ;

const char *acpi_ut_get_mutex_name(u32 mutex_id)
{

 if (mutex_id > ACPI_MAX_MUTEX) {
  return ("Invalid Mutex ID");
 }

 return (acpi_gbl_mutex_names[mutex_id]);
}
