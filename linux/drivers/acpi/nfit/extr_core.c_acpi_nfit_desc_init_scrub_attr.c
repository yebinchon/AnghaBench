
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_node {int dummy; } ;
struct TYPE_2__ {struct kernfs_node* sd; } ;
struct device {TYPE_1__ kobj; } ;
struct acpi_nfit_desc {void* scrub_count_state; int nvdimm_bus; struct device* dev; } ;


 int ENODEV ;
 int ars_supported (int ) ;
 int dev_err (struct device*,char*) ;
 void* sysfs_get_dirent (struct kernfs_node*,char*) ;
 int sysfs_put (struct kernfs_node*) ;
 struct device* to_nvdimm_bus_dev (int ) ;

__attribute__((used)) static int acpi_nfit_desc_init_scrub_attr(struct acpi_nfit_desc *acpi_desc)
{
 struct device *dev = acpi_desc->dev;
 struct kernfs_node *nfit;
 struct device *bus_dev;

 if (!ars_supported(acpi_desc->nvdimm_bus))
  return 0;

 bus_dev = to_nvdimm_bus_dev(acpi_desc->nvdimm_bus);
 nfit = sysfs_get_dirent(bus_dev->kobj.sd, "nfit");
 if (!nfit) {
  dev_err(dev, "sysfs_get_dirent 'nfit' failed\n");
  return -ENODEV;
 }
 acpi_desc->scrub_count_state = sysfs_get_dirent(nfit, "scrub");
 sysfs_put(nfit);
 if (!acpi_desc->scrub_count_state) {
  dev_err(dev, "sysfs_get_dirent 'scrub' failed\n");
  return -ENODEV;
 }

 return 0;
}
