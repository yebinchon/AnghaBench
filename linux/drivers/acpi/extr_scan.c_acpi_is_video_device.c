
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int ACPI_TYPE_DEVICE ;
 int ACPI_UINT32_MAX ;
 long ACPI_VIDEO_DEVICE_POSTING ;
 long ACPI_VIDEO_OUTPUT_SWITCHING ;
 long ACPI_VIDEO_ROM_AVAILABLE ;
 int acpi_backlight_cap_match ;
 scalar_t__ acpi_has_method (int ,char*) ;
 int acpi_walk_namespace (int ,int ,int ,int ,int *,long*,int *) ;

long acpi_is_video_device(acpi_handle handle)
{
 long video_caps = 0;


 if (acpi_has_method(handle, "_DOD") || acpi_has_method(handle, "_DOS"))
  video_caps |= ACPI_VIDEO_OUTPUT_SWITCHING;


 if (acpi_has_method(handle, "_ROM"))
  video_caps |= ACPI_VIDEO_ROM_AVAILABLE;


 if (acpi_has_method(handle, "_VPO") &&
     acpi_has_method(handle, "_GPD") &&
     acpi_has_method(handle, "_SPD"))
  video_caps |= ACPI_VIDEO_DEVICE_POSTING;


 if (video_caps)
  acpi_walk_namespace(ACPI_TYPE_DEVICE, handle,
        ACPI_UINT32_MAX, acpi_backlight_cap_match, ((void*)0),
        &video_caps, ((void*)0));

 return video_caps;
}
