
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_video_device_attrib {int display_type; scalar_t__ bios_can_detect; scalar_t__ device_id_scheme; } ;
struct TYPE_2__ {int crt; int tvout; int dvi; int lcd; int unknown; int bios; } ;
struct acpi_video_device {unsigned long long device_id; int entry; TYPE_1__ flags; int switch_brightness_work; struct acpi_device* dev; struct acpi_video_bus* video; } ;
struct acpi_video_bus {int device_list_lock; int video_device_list; } ;
struct acpi_device {struct acpi_video_device* driver_data; int handle; } ;


 scalar_t__ ACPI_FAILURE (int) ;
 int ACPI_VIDEO_CLASS ;
 int ACPI_VIDEO_DEVICE_NAME ;







 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_video_device_bind (struct acpi_video_bus*,struct acpi_video_device*) ;
 int acpi_video_device_find_cap (struct acpi_video_device*) ;
 struct acpi_video_device_attrib* acpi_video_get_device_attr (struct acpi_video_bus*,unsigned long long) ;
 int acpi_video_get_device_type (struct acpi_video_bus*,unsigned long long) ;
 int acpi_video_switch_brightness ;
 scalar_t__ device_id_scheme ;
 struct acpi_video_device* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int
acpi_video_bus_get_one_device(struct acpi_device *device,
         struct acpi_video_bus *video)
{
 unsigned long long device_id;
 int status, device_type;
 struct acpi_video_device *data;
 struct acpi_video_device_attrib *attribute;

 status =
     acpi_evaluate_integer(device->handle, "_ADR", ((void*)0), &device_id);

 if (ACPI_FAILURE(status))
  return 0;

 data = kzalloc(sizeof(struct acpi_video_device), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 strcpy(acpi_device_name(device), ACPI_VIDEO_DEVICE_NAME);
 strcpy(acpi_device_class(device), ACPI_VIDEO_CLASS);
 device->driver_data = data;

 data->device_id = device_id;
 data->video = video;
 data->dev = device;
 INIT_DELAYED_WORK(&data->switch_brightness_work,
     acpi_video_switch_brightness);

 attribute = acpi_video_get_device_attr(video, device_id);

 if (attribute && (attribute->device_id_scheme || device_id_scheme)) {
  switch (attribute->display_type) {
  case 134:
   data->flags.crt = 1;
   break;
  case 128:
   data->flags.tvout = 1;
   break;
  case 133:
   data->flags.dvi = 1;
   break;
  case 132:
   data->flags.lcd = 1;
   break;
  default:
   data->flags.unknown = 1;
   break;
  }
  if (attribute->bios_can_detect)
   data->flags.bios = 1;
 } else {

  device_type = acpi_video_get_device_type(video, device_id);

  switch (device_type & 0xffe2ffff) {
  case 131:
   data->flags.crt = 1;
   break;
  case 130:
   data->flags.lcd = 1;
   break;
  case 129:
   data->flags.tvout = 1;
   break;
  default:
   data->flags.unknown = 1;
  }
 }

 acpi_video_device_bind(video, data);
 acpi_video_device_find_cap(data);

 mutex_lock(&video->device_list_lock);
 list_add_tail(&data->entry, &video->video_device_list);
 mutex_unlock(&video->device_list_lock);

 return status;
}
