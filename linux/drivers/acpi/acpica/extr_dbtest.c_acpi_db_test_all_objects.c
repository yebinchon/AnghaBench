
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int ACPI_DB_READ_METHOD ;
 int ACPI_DB_WRITE_METHOD ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int acpi_db_test_one_object ;
 int acpi_format_exception (int ) ;
 int acpi_get_handle (int *,int ,int *) ;
 int acpi_install_method (int ) ;
 int acpi_os_printf (char*,int ) ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,int *,int *) ;
 int read_handle ;
 int read_method_code ;
 int write_handle ;
 int write_method_code ;

__attribute__((used)) static void acpi_db_test_all_objects(void)
{
 acpi_status status;



 if (!read_handle) {
  status = acpi_install_method(read_method_code);
  if (ACPI_FAILURE(status)) {
   acpi_os_printf
       ("%s, Could not install debugger read method\n",
        acpi_format_exception(status));
   return;
  }

  status =
      acpi_get_handle(((void*)0), ACPI_DB_READ_METHOD, &read_handle);
  if (ACPI_FAILURE(status)) {
   acpi_os_printf
       ("Could not obtain handle for debug method %s\n",
        ACPI_DB_READ_METHOD);
   return;
  }
 }



 if (!write_handle) {
  status = acpi_install_method(write_method_code);
  if (ACPI_FAILURE(status)) {
   acpi_os_printf
       ("%s, Could not install debugger write method\n",
        acpi_format_exception(status));
   return;
  }

  status =
      acpi_get_handle(((void*)0), ACPI_DB_WRITE_METHOD, &write_handle);
  if (ACPI_FAILURE(status)) {
   acpi_os_printf
       ("Could not obtain handle for debug method %s\n",
        ACPI_DB_WRITE_METHOD);
   return;
  }
 }



 (void)acpi_walk_namespace(ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
      ACPI_UINT32_MAX, acpi_db_test_one_object,
      ((void*)0), ((void*)0), ((void*)0));
}
