
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct input_dev {int dummy; } ;
struct acpi_video_bus {struct input_dev* input; } ;
struct acpi_device {int dummy; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;





 int KEY_SWITCHVIDEOMODE ;
 int KEY_VIDEO_NEXT ;
 int KEY_VIDEO_PREV ;
 int REPORT_OUTPUT_KEY_EVENTS ;
 struct acpi_video_bus* acpi_driver_data (struct acpi_device*) ;
 scalar_t__ acpi_notifier_call_chain (struct acpi_device*,int,int ) ;
 int acpi_video_device_enumerate (struct acpi_video_bus*) ;
 int acpi_video_device_rebind (struct acpi_video_bus*) ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;
 int report_key_events ;

__attribute__((used)) static void acpi_video_bus_notify(struct acpi_device *device, u32 event)
{
 struct acpi_video_bus *video = acpi_driver_data(device);
 struct input_dev *input;
 int keycode = 0;

 if (!video || !video->input)
  return;

 input = video->input;

 switch (event) {
 case 128:

  keycode = KEY_SWITCHVIDEOMODE;
  break;

 case 129:

  acpi_video_device_enumerate(video);
  acpi_video_device_rebind(video);
  keycode = KEY_SWITCHVIDEOMODE;
  break;

 case 132:
  keycode = KEY_SWITCHVIDEOMODE;
  break;
 case 131:
  keycode = KEY_VIDEO_NEXT;
  break;
 case 130:
  keycode = KEY_VIDEO_PREV;
  break;

 default:
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Unsupported event [0x%x]\n", event));
  break;
 }

 if (acpi_notifier_call_chain(device, event, 0))

  keycode = 0;

 if (keycode && (report_key_events & REPORT_OUTPUT_KEY_EVENTS)) {
  input_report_key(input, keycode, 1);
  input_sync(input);
  input_report_key(input, keycode, 0);
  input_sync(input);
 }

 return;
}
