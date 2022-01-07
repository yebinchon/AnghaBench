
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_video_bus {int dummy; } ;


 scalar_t__ acpi_osi_is_win8 () ;
 int acpi_video_bus_DOS (struct acpi_video_bus*,int ,int) ;

__attribute__((used)) static int acpi_video_bus_stop_devices(struct acpi_video_bus *video)
{
 return acpi_video_bus_DOS(video, 0,
      acpi_osi_is_win8() ? 0 : 1);
}
