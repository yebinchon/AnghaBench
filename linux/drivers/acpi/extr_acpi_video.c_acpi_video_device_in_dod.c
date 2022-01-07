
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_video_device {int device_id; struct acpi_video_bus* video; } ;
struct acpi_video_bus {int attached_count; int child_count; TYPE_2__* attached_array; } ;
struct TYPE_3__ {int int_val; } ;
struct TYPE_4__ {TYPE_1__ value; } ;



__attribute__((used)) static bool acpi_video_device_in_dod(struct acpi_video_device *device)
{
 struct acpi_video_bus *video = device->video;
 int i;






 if (!video->attached_count || video->child_count > 8)
  return 1;

 for (i = 0; i < video->attached_count; i++) {
  if ((video->attached_array[i].value.int_val & 0xfff) ==
      (device->device_id & 0xfff))
   return 1;
 }

 return 0;
}
