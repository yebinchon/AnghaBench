
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_device {int dev; int handle; } ;


 int __acpi_nfit_notify (int *,int ,int ) ;
 int nfit_device_lock (int *) ;
 int nfit_device_unlock (int *) ;

__attribute__((used)) static void acpi_nfit_notify(struct acpi_device *adev, u32 event)
{
 nfit_device_lock(&adev->dev);
 __acpi_nfit_notify(&adev->dev, adev->handle, event);
 nfit_device_unlock(&adev->dev);
}
