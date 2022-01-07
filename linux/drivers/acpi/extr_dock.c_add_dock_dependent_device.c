
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int dependent_devices; } ;
struct dock_dependent_device {int list; struct acpi_device* adev; } ;
struct acpi_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct dock_dependent_device* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int add_dock_dependent_device(struct dock_station *ds,
         struct acpi_device *adev)
{
 struct dock_dependent_device *dd;

 dd = kzalloc(sizeof(*dd), GFP_KERNEL);
 if (!dd)
  return -ENOMEM;

 dd->adev = adev;
 INIT_LIST_HEAD(&dd->list);
 list_add_tail(&dd->list, &ds->dependent_devices);

 return 0;
}
