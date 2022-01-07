
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
typedef int acpi_handle ;


 int ACPI_OST_EC_OSPM_SHUTDOWN ;
 int ACPI_OST_SC_OS_SHUTDOWN_IN_PROGRESS ;
 int ACPI_SB_INDICATE_INTERVAL ;
 int acpi_evaluate_ost (int ,int ,int ,int *) ;
 int acpi_get_handle (int *,char*,int *) ;
 int msleep (int ) ;
 int orderly_poweroff (int) ;
 int pr_info (char*) ;

__attribute__((used)) static void sb_notify_work(struct work_struct *dummy)
{
 acpi_handle sb_handle;

 orderly_poweroff(1);






 acpi_get_handle(((void*)0), "\\_SB", &sb_handle);
 while (1) {
  pr_info("Graceful shutdown in progress.\n");
  acpi_evaluate_ost(sb_handle, ACPI_OST_EC_OSPM_SHUTDOWN,
    ACPI_OST_SC_OS_SHUTDOWN_IN_PROGRESS, ((void*)0));
  msleep(ACPI_SB_INDICATE_INTERVAL);
 }
}
