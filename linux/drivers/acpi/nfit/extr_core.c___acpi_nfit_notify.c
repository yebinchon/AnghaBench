
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef int acpi_handle ;




 void acpi_nfit_uc_error_notify (struct device*,int ) ;
 void acpi_nfit_update_notify (struct device*,int ) ;
 int dev_dbg (struct device*,char*,int) ;

void __acpi_nfit_notify(struct device *dev, acpi_handle handle, u32 event)
{
 dev_dbg(dev, "event: 0x%x\n", event);

 switch (event) {
 case 128:
  return acpi_nfit_update_notify(dev, handle);
 case 129:
  return acpi_nfit_uc_error_notify(dev, handle);
 default:
  return;
 }
}
