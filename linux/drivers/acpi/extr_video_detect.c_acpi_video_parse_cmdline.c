
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_backlight_cmdline ;
 int acpi_backlight_native ;
 int acpi_backlight_none ;
 int acpi_backlight_vendor ;
 int acpi_backlight_video ;
 int acpi_video_backlight_string ;
 int strcmp (char*,int ) ;

__attribute__((used)) static void acpi_video_parse_cmdline(void)
{
 if (!strcmp("vendor", acpi_video_backlight_string))
  acpi_backlight_cmdline = acpi_backlight_vendor;
 if (!strcmp("video", acpi_video_backlight_string))
  acpi_backlight_cmdline = acpi_backlight_video;
 if (!strcmp("native", acpi_video_backlight_string))
  acpi_backlight_cmdline = acpi_backlight_native;
 if (!strcmp("none", acpi_video_backlight_string))
  acpi_backlight_cmdline = acpi_backlight_none;
}
