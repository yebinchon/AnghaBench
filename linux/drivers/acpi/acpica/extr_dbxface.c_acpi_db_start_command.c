
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_parse_object {int dummy; } acpi_parse_object ;
struct acpi_walk_state {int dummy; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ AE_CTRL_TERMINATE ;
 scalar_t__ AE_CTRL_TRUE ;
 int AE_INFO ;
 int TRUE ;
 scalar_t__ acpi_db_command_dispatch (int ,struct acpi_walk_state*,union acpi_parse_object*) ;
 int acpi_gbl_db_line_buf ;
 int acpi_gbl_method_executing ;
 scalar_t__ acpi_os_notify_command_complete () ;
 scalar_t__ acpi_os_wait_command_ready () ;

__attribute__((used)) static acpi_status
acpi_db_start_command(struct acpi_walk_state *walk_state,
        union acpi_parse_object *op)
{
 acpi_status status;







 acpi_gbl_method_executing = TRUE;
 status = AE_CTRL_TRUE;

 while (status == AE_CTRL_TRUE) {



  status = acpi_os_notify_command_complete();
  if (ACPI_FAILURE(status)) {
   goto error_exit;
  }



  status = acpi_os_wait_command_ready();
  if (ACPI_FAILURE(status)) {
   goto error_exit;
  }

  status =
      acpi_db_command_dispatch(acpi_gbl_db_line_buf, walk_state,
          op);
 }



error_exit:
 if (ACPI_FAILURE(status) && status != AE_CTRL_TERMINATE) {
  ACPI_EXCEPTION((AE_INFO, status,
    "While parsing/handling command line"));
 }
 return (status);
}
