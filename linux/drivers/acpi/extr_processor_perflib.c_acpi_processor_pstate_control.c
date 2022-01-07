
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int acpi_status ;
struct TYPE_2__ {int smi_command; scalar_t__ pstate_control; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_INFO ;
 int EIO ;
 TYPE_1__ acpi_gbl_FADT ;
 int acpi_os_write_port (int ,int ,int) ;

int acpi_processor_pstate_control(void)
{
 acpi_status status;

 if (!acpi_gbl_FADT.smi_command || !acpi_gbl_FADT.pstate_control)
  return 0;

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "Writing pstate_control [0x%x] to smi_command [0x%x]\n",
     acpi_gbl_FADT.pstate_control, acpi_gbl_FADT.smi_command));

 status = acpi_os_write_port(acpi_gbl_FADT.smi_command,
        (u32)acpi_gbl_FADT.pstate_control, 8);
 if (ACPI_SUCCESS(status))
  return 1;

 ACPI_EXCEPTION((AE_INFO, status,
   "Failed to write pstate_control [0x%x] to smi_command [0x%x]",
   acpi_gbl_FADT.pstate_control, acpi_gbl_FADT.smi_command));
 return -EIO;
}
