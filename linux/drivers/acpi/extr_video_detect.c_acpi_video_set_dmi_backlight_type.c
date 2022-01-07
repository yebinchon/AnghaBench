
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum acpi_backlight_type { ____Placeholder_acpi_backlight_type } acpi_backlight_type ;


 int acpi_backlight_dmi ;
 scalar_t__ acpi_backlight_video ;
 scalar_t__ acpi_video_get_backlight_type () ;
 int acpi_video_unregister_backlight () ;

void acpi_video_set_dmi_backlight_type(enum acpi_backlight_type type)
{
 acpi_backlight_dmi = type;

 if (acpi_video_get_backlight_type() != acpi_backlight_video)
  acpi_video_unregister_backlight();
}
