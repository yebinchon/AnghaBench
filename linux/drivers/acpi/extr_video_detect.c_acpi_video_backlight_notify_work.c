
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 scalar_t__ acpi_backlight_video ;
 scalar_t__ acpi_video_get_backlight_type () ;
 int acpi_video_unregister_backlight () ;

__attribute__((used)) static void acpi_video_backlight_notify_work(struct work_struct *work)
{
 if (acpi_video_get_backlight_type() != acpi_backlight_video)
  acpi_video_unregister_backlight();
}
