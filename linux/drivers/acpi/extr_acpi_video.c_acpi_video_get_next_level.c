
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct acpi_video_device {TYPE_1__* brightness; } ;
struct TYPE_2__ {int count; int* levels; } ;


 int ACPI_VIDEO_FIRST_LEVEL ;





 scalar_t__ abs (int) ;

__attribute__((used)) static int
acpi_video_get_next_level(struct acpi_video_device *device,
     u32 level_current, u32 event)
{
 int min, max, min_above, max_below, i, l, delta = 255;
 max = max_below = 0;
 min = min_above = 255;

 for (i = ACPI_VIDEO_FIRST_LEVEL; i < device->brightness->count; i++) {
  l = device->brightness->levels[i];
  if (abs(l - level_current) < abs(delta)) {
   delta = l - level_current;
   if (!delta)
    break;
  }
 }

 level_current += delta;
 for (i = ACPI_VIDEO_FIRST_LEVEL; i < device->brightness->count; i++) {
  l = device->brightness->levels[i];
  if (l < min)
   min = l;
  if (l > max)
   max = l;
  if (l < min_above && l > level_current)
   min_above = l;
  if (l > max_below && l < level_current)
   max_below = l;
 }

 switch (event) {
 case 132:
  return (level_current < max) ? min_above : min;
 case 129:
  return (level_current < max) ? min_above : max;
 case 131:
  return (level_current > min) ? max_below : min;
 case 128:
 case 130:
  return 0;
 default:
  return level_current;
 }
}
