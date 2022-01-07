
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int_val; } ;
struct acpi_video_enumerated_device {TYPE_1__ value; } ;
struct acpi_video_bus {int attached_count; struct acpi_video_enumerated_device* attached_array; } ;



__attribute__((used)) static int
acpi_video_get_device_type(struct acpi_video_bus *video,
      unsigned long device_id)
{
 struct acpi_video_enumerated_device *ids;
 int i;

 for (i = 0; i < video->attached_count; i++) {
  ids = &video->attached_array[i];
  if ((ids->value.int_val & 0xffff) == device_id)
   return ids->value.int_val;
 }

 return 0;
}
