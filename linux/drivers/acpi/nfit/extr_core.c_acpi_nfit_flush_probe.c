
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus_descriptor {int dummy; } ;
struct device {int dummy; } ;
struct acpi_nfit_desc {int init_mutex; struct device* dev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfit_device_lock (struct device*) ;
 int nfit_device_unlock (struct device*) ;
 struct acpi_nfit_desc* to_acpi_desc (struct nvdimm_bus_descriptor*) ;

__attribute__((used)) static int acpi_nfit_flush_probe(struct nvdimm_bus_descriptor *nd_desc)
{
 struct acpi_nfit_desc *acpi_desc = to_acpi_desc(nd_desc);
 struct device *dev = acpi_desc->dev;


 nfit_device_lock(dev);
 nfit_device_unlock(dev);


 mutex_lock(&acpi_desc->init_mutex);
 mutex_unlock(&acpi_desc->init_mutex);

 return 0;
}
