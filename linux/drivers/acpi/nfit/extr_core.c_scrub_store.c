
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus_descriptor {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_nfit_desc {int dummy; } ;
typedef size_t ssize_t ;


 int ARS_REQ_LONG ;
 size_t EINVAL ;
 size_t acpi_nfit_ars_rescan (struct acpi_nfit_desc*,int ) ;
 struct nvdimm_bus_descriptor* dev_get_drvdata (struct device*) ;
 size_t kstrtol (char const*,int ,long*) ;
 int nfit_device_lock (struct device*) ;
 int nfit_device_unlock (struct device*) ;
 struct acpi_nfit_desc* to_acpi_desc (struct nvdimm_bus_descriptor*) ;

__attribute__((used)) static ssize_t scrub_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t size)
{
 struct nvdimm_bus_descriptor *nd_desc;
 ssize_t rc;
 long val;

 rc = kstrtol(buf, 0, &val);
 if (rc)
  return rc;
 if (val != 1)
  return -EINVAL;

 nfit_device_lock(dev);
 nd_desc = dev_get_drvdata(dev);
 if (nd_desc) {
  struct acpi_nfit_desc *acpi_desc = to_acpi_desc(nd_desc);

  rc = acpi_nfit_ars_rescan(acpi_desc, ARS_REQ_LONG);
 }
 nfit_device_unlock(dev);
 if (rc)
  return rc;
 return size;
}
