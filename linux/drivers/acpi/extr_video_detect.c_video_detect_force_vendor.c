
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int acpi_backlight_dmi ;
 int acpi_backlight_vendor ;

__attribute__((used)) static int video_detect_force_vendor(const struct dmi_system_id *d)
{
 acpi_backlight_dmi = acpi_backlight_vendor;
 return 0;
}
