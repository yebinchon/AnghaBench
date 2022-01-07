
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_video_device {TYPE_2__* brightness; } ;
struct TYPE_3__ {scalar_t__ _BCL_reversed; scalar_t__ _BQC_use_index; } ;
struct TYPE_4__ {int count; unsigned long long* levels; TYPE_1__ flags; } ;


 unsigned long long ACPI_VIDEO_FIRST_LEVEL ;
 scalar_t__ bqc_offset_aml_bug_workaround ;

__attribute__((used)) static unsigned long long
acpi_video_bqc_value_to_level(struct acpi_video_device *device,
         unsigned long long bqc_value)
{
 unsigned long long level;

 if (device->brightness->flags._BQC_use_index) {





  if (device->brightness->flags._BCL_reversed)
   bqc_value = device->brightness->count -
    ACPI_VIDEO_FIRST_LEVEL - 1 - bqc_value;

  level = device->brightness->levels[bqc_value +
                                     ACPI_VIDEO_FIRST_LEVEL];
 } else {
  level = bqc_value;
 }

 level += bqc_offset_aml_bug_workaround;

 return level;
}
