
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc {int handle; struct ioc* next; } ;
struct acpi_device_id {int dummy; } ;
struct acpi_device {int handle; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ioc* ioc_found ;
 struct ioc* kzalloc (int,int ) ;

__attribute__((used)) static int acpi_sba_ioc_attach(struct acpi_device *device,
          const struct acpi_device_id *not_used)
{
 struct ioc *ioc;

 ioc = kzalloc(sizeof(*ioc), GFP_KERNEL);
 if (!ioc)
  return -ENOMEM;

 ioc->next = ioc_found;
 ioc_found = ioc;
 ioc->handle = device->handle;
 return 1;
}
