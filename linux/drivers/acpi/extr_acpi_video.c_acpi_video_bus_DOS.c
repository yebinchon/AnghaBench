
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int _DOS; } ;
struct acpi_video_bus {int dos_setting; TYPE_1__* device; TYPE_2__ cap; } ;
typedef int acpi_status ;
struct TYPE_3__ {int handle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int EIO ;
 int acpi_execute_simple_method (int ,char*,int) ;

__attribute__((used)) static int
acpi_video_bus_DOS(struct acpi_video_bus *video, int bios_flag, int lcd_flag)
{
 acpi_status status;

 if (!video->cap._DOS)
  return 0;

 if (bios_flag < 0 || bios_flag > 3 || lcd_flag < 0 || lcd_flag > 1)
  return -EINVAL;
 video->dos_setting = (lcd_flag << 2) | bios_flag;
 status = acpi_execute_simple_method(video->device->handle, "_DOS",
         (lcd_flag << 2) | bios_flag);
 if (ACPI_FAILURE(status))
  return -EIO;

 return 0;
}
