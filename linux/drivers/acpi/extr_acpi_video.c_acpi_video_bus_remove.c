
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_video_bus {struct acpi_video_bus* attached_array; int entry; } ;
struct acpi_device {int dummy; } ;


 int EINVAL ;
 struct acpi_video_bus* acpi_driver_data (struct acpi_device*) ;
 int acpi_video_bus_put_devices (struct acpi_video_bus*) ;
 int acpi_video_bus_remove_notify_handler (struct acpi_video_bus*) ;
 int acpi_video_bus_unregister_backlight (struct acpi_video_bus*) ;
 int kfree (struct acpi_video_bus*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int video_list_lock ;

__attribute__((used)) static int acpi_video_bus_remove(struct acpi_device *device)
{
 struct acpi_video_bus *video = ((void*)0);


 if (!device || !acpi_driver_data(device))
  return -EINVAL;

 video = acpi_driver_data(device);

 acpi_video_bus_remove_notify_handler(video);
 acpi_video_bus_unregister_backlight(video);
 acpi_video_bus_put_devices(video);

 mutex_lock(&video_list_lock);
 list_del(&video->entry);
 mutex_unlock(&video_list_lock);

 kfree(video->attached_array);
 kfree(video);

 return 0;
}
