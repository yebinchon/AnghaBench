
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_video_device {int switch_brightness_work; int switch_brightness_event; } ;


 int HZ ;
 int brightness_switch_enabled ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static void brightness_switch_event(struct acpi_video_device *video_device,
        u32 event)
{
 if (!brightness_switch_enabled)
  return;

 video_device->switch_brightness_event = event;
 schedule_delayed_work(&video_device->switch_brightness_work, HZ / 10);
}
