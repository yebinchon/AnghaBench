
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dock_station {int handle; } ;


 int EBUSY ;
 int UNDOCK_EVENT ;
 int acpi_evaluate_ej0 (int ) ;
 int acpi_evaluate_lck (int ,int ) ;
 int acpi_handle_err (int ,char*) ;
 int complete_undock (struct dock_station*) ;
 int dock_event (struct dock_station*,int ,int ) ;
 scalar_t__ dock_in_progress (struct dock_station*) ;
 scalar_t__ dock_present (struct dock_station*) ;
 int hot_remove_dock_devices (struct dock_station*) ;
 int undock (struct dock_station*) ;

__attribute__((used)) static int handle_eject_request(struct dock_station *ds, u32 event)
{
 if (dock_in_progress(ds))
  return -EBUSY;
 dock_event(ds, event, UNDOCK_EVENT);

 hot_remove_dock_devices(ds);
 undock(ds);
 acpi_evaluate_lck(ds->handle, 0);
 acpi_evaluate_ej0(ds->handle);
 if (dock_present(ds)) {
  acpi_handle_err(ds->handle, "Unable to undock!\n");
  return -EBUSY;
 }
 complete_undock(ds);
 return 0;
}
