
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 long ACPI_VIDEO_BACKLIGHT ;
 int AE_CTRL_TERMINATE ;
 scalar_t__ acpi_has_method (int ,char*) ;

__attribute__((used)) static acpi_status
acpi_backlight_cap_match(acpi_handle handle, u32 level, void *context,
     void **return_value)
{
 long *cap = context;

 if (acpi_has_method(handle, "_BCM") &&
     acpi_has_method(handle, "_BCL")) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Found generic backlight "
      "support\n"));
  *cap |= ACPI_VIDEO_BACKLIGHT;

  return AE_CTRL_TERMINATE;
 }
 return 0;
}
