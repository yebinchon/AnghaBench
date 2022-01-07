
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
struct acpi_button {int last_state; int last_time; int input; } ;
typedef int ktime_t ;


 scalar_t__ ACPI_BUTTON_LID_INIT_IGNORE ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int SW_LID ;
 struct acpi_button* acpi_driver_data (struct acpi_device*) ;
 int acpi_handle_debug (int ,char*,char*) ;
 int acpi_lid_notifier ;
 int blocking_notifier_call_chain (int *,int,struct acpi_device*) ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;
 int ktime_add (int ,int ) ;
 scalar_t__ ktime_after (int ,int ) ;
 int ktime_get () ;
 scalar_t__ lid_init_state ;
 int lid_report_interval ;
 int ms_to_ktime (int ) ;
 int pr_warn_once (char*) ;

__attribute__((used)) static int acpi_lid_notify_state(struct acpi_device *device, int state)
{
 struct acpi_button *button = acpi_driver_data(device);
 int ret;
 ktime_t next_report;
 bool do_update;
 if (lid_init_state != ACPI_BUTTON_LID_INIT_IGNORE ||
     button->last_state != !!state)
  do_update = 1;
 else
  do_update = 0;

 next_report = ktime_add(button->last_time,
    ms_to_ktime(lid_report_interval));
 if (button->last_state == !!state &&
     ktime_after(ktime_get(), next_report)) {

  pr_warn_once("The lid device is not compliant to SW_LID.\n");
  if (lid_init_state == ACPI_BUTTON_LID_INIT_IGNORE) {
   do_update = 1;
   if (!state) {
    input_report_switch(button->input,
          SW_LID, state);
    input_sync(button->input);
   }
  }
 }

 if (do_update) {
  acpi_handle_debug(device->handle, "ACPI LID %s\n",
      state ? "open" : "closed");
  input_report_switch(button->input, SW_LID, !state);
  input_sync(button->input);
  button->last_state = !!state;
  button->last_time = ktime_get();
 }

 ret = blocking_notifier_call_chain(&acpi_lid_notifier, state, device);
 if (ret == NOTIFY_DONE)
  ret = blocking_notifier_call_chain(&acpi_lid_notifier, state,
         device);
 if (ret == NOTIFY_DONE || ret == NOTIFY_OK) {




  ret = 0;
 }
 return ret;
}
