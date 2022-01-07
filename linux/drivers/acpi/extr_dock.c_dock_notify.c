
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dock_station {int flags; int handle; } ;
struct acpi_device {int handle; } ;
typedef int acpi_handle ;





 int DOCK_EVENT ;
 int DOCK_IS_ATA ;
 int DOCK_IS_DOCK ;
 int ENODEV ;
 int UNDOCK_EVENT ;
 int acpi_device_enumerated (struct acpi_device*) ;
 int acpi_evaluate_lck (int ,int) ;
 int acpi_handle_err (int ,char*) ;
 int acpi_update_all_gpes () ;
 int begin_dock (struct dock_station*) ;
 int begin_undock (struct dock_station*) ;
 int complete_dock (struct dock_station*) ;
 int dock (struct dock_station*) ;
 int dock_event (struct dock_station*,int,int ) ;
 int dock_in_progress (struct dock_station*) ;
 int dock_present (struct dock_station*) ;
 struct dock_station* find_dock_station (int ) ;
 int handle_eject_request (struct dock_station*,int) ;
 int hotplug_dock_devices (struct dock_station*,int) ;
 int immediate_undock ;

int dock_notify(struct acpi_device *adev, u32 event)
{
 acpi_handle handle = adev->handle;
 struct dock_station *ds = find_dock_station(handle);
 int surprise_removal = 0;

 if (!ds)
  return -ENODEV;






 if ((ds->flags & DOCK_IS_DOCK) && event == 129)
  event = 128;
 switch (event) {
 case 130:
 case 129:
  if (!dock_in_progress(ds) && !acpi_device_enumerated(adev)) {
   begin_dock(ds);
   dock(ds);
   if (!dock_present(ds)) {
    acpi_handle_err(handle, "Unable to dock!\n");
    complete_dock(ds);
    break;
   }
   hotplug_dock_devices(ds, event);
   complete_dock(ds);
   dock_event(ds, event, DOCK_EVENT);
   acpi_evaluate_lck(ds->handle, 1);
   acpi_update_all_gpes();
   break;
  }
  if (dock_present(ds) || dock_in_progress(ds))
   break;

  surprise_removal = 1;
  event = 128;


 case 128:
  begin_undock(ds);
  if ((immediate_undock && !(ds->flags & DOCK_IS_ATA))
     || surprise_removal)
   handle_eject_request(ds, event);
  else
   dock_event(ds, event, UNDOCK_EVENT);
  break;
 }
 return 0;
}
