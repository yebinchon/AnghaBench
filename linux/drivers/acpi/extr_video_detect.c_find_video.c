
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct acpi_device_id {char* member_0; int member_1; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;



 int AE_OK ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 struct pci_dev* acpi_get_pci_dev (int ) ;
 long acpi_is_video_device (int ) ;
 int acpi_match_device_ids (struct acpi_device*,struct acpi_device_id const*) ;
 int pci_dev_put (struct pci_dev*) ;

__attribute__((used)) static acpi_status
find_video(acpi_handle handle, u32 lvl, void *context, void **rv)
{
 long *cap = context;
 struct pci_dev *dev;
 struct acpi_device *acpi_dev;

 static const struct acpi_device_id video_ids[] = {
  {128, 0},
  {"", 0},
 };
 if (acpi_bus_get_device(handle, &acpi_dev))
  return AE_OK;

 if (!acpi_match_device_ids(acpi_dev, video_ids)) {
  dev = acpi_get_pci_dev(handle);
  if (!dev)
   return AE_OK;
  pci_dev_put(dev);
  *cap |= acpi_is_video_device(handle);
 }
 return AE_OK;
}
