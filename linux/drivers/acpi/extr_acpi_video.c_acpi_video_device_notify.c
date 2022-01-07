
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct input_dev {int dummy; } ;
struct acpi_video_device {scalar_t__ backlight; struct acpi_video_bus* video; struct acpi_device* dev; } ;
struct acpi_video_bus {struct input_dev* input; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;





 int BACKLIGHT_UPDATE_HOTKEY ;
 int KEY_BRIGHTNESSDOWN ;
 int KEY_BRIGHTNESSUP ;
 int KEY_BRIGHTNESS_CYCLE ;
 int KEY_BRIGHTNESS_ZERO ;
 int KEY_DISPLAY_OFF ;
 int REPORT_BRIGHTNESS_KEY_EVENTS ;
 int acpi_notifier_call_chain (struct acpi_device*,int ,int ) ;
 int backlight_force_update (scalar_t__,int ) ;
 int brightness_switch_event (struct acpi_video_device*,int ) ;
 scalar_t__ hw_changes_brightness ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;
 int report_key_events ;

__attribute__((used)) static void acpi_video_device_notify(acpi_handle handle, u32 event, void *data)
{
 struct acpi_video_device *video_device = data;
 struct acpi_device *device = ((void*)0);
 struct acpi_video_bus *bus;
 struct input_dev *input;
 int keycode = 0;

 if (!video_device)
  return;

 device = video_device->dev;
 bus = video_device->video;
 input = bus->input;

 if (hw_changes_brightness > 0) {
  if (video_device->backlight)
   backlight_force_update(video_device->backlight,
            BACKLIGHT_UPDATE_HOTKEY);
  acpi_notifier_call_chain(device, event, 0);
  return;
 }

 switch (event) {
 case 132:
  brightness_switch_event(video_device, event);
  keycode = KEY_BRIGHTNESS_CYCLE;
  break;
 case 129:
  brightness_switch_event(video_device, event);
  keycode = KEY_BRIGHTNESSUP;
  break;
 case 131:
  brightness_switch_event(video_device, event);
  keycode = KEY_BRIGHTNESSDOWN;
  break;
 case 128:
  brightness_switch_event(video_device, event);
  keycode = KEY_BRIGHTNESS_ZERO;
  break;
 case 130:
  brightness_switch_event(video_device, event);
  keycode = KEY_DISPLAY_OFF;
  break;
 default:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Unsupported event [0x%x]\n", event));
  break;
 }

 acpi_notifier_call_chain(device, event, 0);

 if (keycode && (report_key_events & REPORT_BRIGHTNESS_KEY_EVENTS)) {
  input_report_key(input, keycode, 1);
  input_sync(input);
  input_report_key(input, keycode, 0);
  input_sync(input);
 }

 return;
}
