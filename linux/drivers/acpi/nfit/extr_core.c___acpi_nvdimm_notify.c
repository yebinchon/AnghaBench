
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfit_mem {scalar_t__ flags_attr; } ;
struct device {struct device* parent; } ;
struct acpi_nfit_desc {int dummy; } ;


 scalar_t__ NFIT_NOTIFY_DIMM_HEALTH ;
 int dev_dbg (struct device*,char*,int ,scalar_t__) ;
 void* dev_get_drvdata (struct device*) ;
 int dev_name (struct device*) ;
 int sysfs_notify_dirent (scalar_t__) ;

void __acpi_nvdimm_notify(struct device *dev, u32 event)
{
 struct nfit_mem *nfit_mem;
 struct acpi_nfit_desc *acpi_desc;

 dev_dbg(dev->parent, "%s: event: %d\n", dev_name(dev),
   event);

 if (event != NFIT_NOTIFY_DIMM_HEALTH) {
  dev_dbg(dev->parent, "%s: unknown event: %d\n", dev_name(dev),
    event);
  return;
 }

 acpi_desc = dev_get_drvdata(dev->parent);
 if (!acpi_desc)
  return;





 nfit_mem = dev_get_drvdata(dev);
 if (nfit_mem && nfit_mem->flags_attr)
  sysfs_notify_dirent(nfit_mem->flags_attr);
}
