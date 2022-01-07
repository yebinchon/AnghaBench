
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct input_dev {int users; int keybit; int mutex; } ;
struct TYPE_2__ {int device_class; } ;
struct acpi_device {int dev; TYPE_1__ pnp; } ;
struct acpi_button {int pushed; int suspended; struct input_dev* input; int type; } ;



 int ACPI_BUTTON_TYPE_LID ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;

 int KEY_POWER ;
 int KEY_SLEEP ;
 int acpi_bus_generate_netlink_event (int ,int ,int,int ) ;
 struct acpi_button* acpi_driver_data (struct acpi_device*) ;
 int acpi_lid_update_state (struct acpi_device*,int) ;
 int acpi_pm_wakeup_event (int *) ;
 int dev_name (int *) ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void acpi_button_notify(struct acpi_device *device, u32 event)
{
 struct acpi_button *button = acpi_driver_data(device);
 struct input_dev *input;
 int users;

 switch (event) {
 case 128:
  event = 129;

 case 129:
  input = button->input;
  if (button->type == ACPI_BUTTON_TYPE_LID) {
   mutex_lock(&button->input->mutex);
   users = button->input->users;
   mutex_unlock(&button->input->mutex);
   if (users)
    acpi_lid_update_state(device, 1);
  } else {
   int keycode;

   acpi_pm_wakeup_event(&device->dev);
   if (button->suspended)
    break;

   keycode = test_bit(KEY_SLEEP, input->keybit) ?
      KEY_SLEEP : KEY_POWER;
   input_report_key(input, keycode, 1);
   input_sync(input);
   input_report_key(input, keycode, 0);
   input_sync(input);

   acpi_bus_generate_netlink_event(
     device->pnp.device_class,
     dev_name(&device->dev),
     event, ++button->pushed);
  }
  break;
 default:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Unsupported event [0x%x]\n", event));
  break;
 }
}
