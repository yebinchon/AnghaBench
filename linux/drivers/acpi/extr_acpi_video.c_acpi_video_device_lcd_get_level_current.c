
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ _BCQ; scalar_t__ _BQC; } ;
struct acpi_video_device {TYPE_3__* brightness; TYPE_2__ cap; TYPE_1__* dev; } ;
typedef int acpi_status ;
struct TYPE_6__ {int count; unsigned long long* levels; unsigned long long curr; } ;
struct TYPE_4__ {int handle; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_VIDEO_FIRST_LEVEL ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 unsigned long long acpi_video_bqc_value_to_level (struct acpi_video_device*,unsigned long long) ;

__attribute__((used)) static int
acpi_video_device_lcd_get_level_current(struct acpi_video_device *device,
     unsigned long long *level, bool raw)
{
 acpi_status status = AE_OK;
 int i;

 if (device->cap._BQC || device->cap._BCQ) {
  char *buf = device->cap._BQC ? "_BQC" : "_BCQ";

  status = acpi_evaluate_integer(device->dev->handle, buf,
      ((void*)0), level);
  if (ACPI_SUCCESS(status)) {
   if (raw) {





    return 0;
   }

   *level = acpi_video_bqc_value_to_level(device, *level);

   for (i = ACPI_VIDEO_FIRST_LEVEL;
        i < device->brightness->count; i++)
    if (device->brightness->levels[i] == *level) {
     device->brightness->curr = *level;
     return 0;
    }




   ACPI_WARNING((AE_INFO,
          "%s returned an invalid level",
          buf));
   device->cap._BQC = device->cap._BCQ = 0;
  } else {
   ACPI_WARNING((AE_INFO, "Evaluating %s failed", buf));
   device->cap._BQC = device->cap._BCQ = 0;
  }
 }

 *level = device->brightness->curr;
 return 0;
}
