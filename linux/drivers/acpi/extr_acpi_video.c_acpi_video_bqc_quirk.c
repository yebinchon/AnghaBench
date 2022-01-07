
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _BQC_use_index; scalar_t__ _BCL_reversed; } ;
struct acpi_video_device_brightness {int* levels; unsigned long long count; TYPE_1__ flags; } ;
struct TYPE_4__ {scalar_t__ _BCQ; scalar_t__ _BQC; } ;
struct acpi_video_device {TYPE_2__ cap; struct acpi_video_device_brightness* brightness; } ;


 int ACPI_VIDEO_FIRST_LEVEL ;
 int acpi_video_device_lcd_get_level_current (struct acpi_video_device*,unsigned long long*,int) ;
 int acpi_video_device_lcd_set_level (struct acpi_video_device*,int) ;
 scalar_t__ bqc_offset_aml_bug_workaround ;

__attribute__((used)) static int acpi_video_bqc_quirk(struct acpi_video_device *device,
    int max_level, int current_level)
{
 struct acpi_video_device_brightness *br = device->brightness;
 int result;
 unsigned long long level;
 int test_level;


 if (bqc_offset_aml_bug_workaround)
  return 0;
 test_level = current_level == max_level
  ? br->levels[ACPI_VIDEO_FIRST_LEVEL + 1]
  : max_level;

 result = acpi_video_device_lcd_set_level(device, test_level);
 if (result)
  return result;

 result = acpi_video_device_lcd_get_level_current(device, &level, 1);
 if (result)
  return result;

 if (level != test_level) {

  if (level < br->count) {
   if (br->flags._BCL_reversed)
    level = br->count - ACPI_VIDEO_FIRST_LEVEL - 1 - level;
   if (br->levels[level + ACPI_VIDEO_FIRST_LEVEL] == test_level)
    br->flags._BQC_use_index = 1;
  }

  if (!br->flags._BQC_use_index)
   device->cap._BQC = device->cap._BCQ = 0;
 }

 return 0;
}
