
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus_descriptor {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_nfit_desc {int scrub_count; int scrub_tmo; int init_mutex; int dwork; int scrub_flags; } ;
typedef int ssize_t ;


 int ARS_BUSY ;
 int ARS_CANCEL ;
 int ARS_POLL ;
 int CAP_SYS_RAWIO ;
 int ENXIO ;
 int HZ ;
 scalar_t__ capable (int ) ;
 struct nvdimm_bus_descriptor* dev_get_drvdata (struct device*) ;
 int mod_delayed_work (int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfit_device_lock (struct device*) ;
 int nfit_device_unlock (struct device*) ;
 int nfit_wq ;
 int sprintf (char*,char*,int,char*) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 struct acpi_nfit_desc* to_acpi_desc (struct nvdimm_bus_descriptor*) ;

__attribute__((used)) static ssize_t scrub_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nvdimm_bus_descriptor *nd_desc;
 struct acpi_nfit_desc *acpi_desc;
 ssize_t rc = -ENXIO;
 bool busy;

 nfit_device_lock(dev);
 nd_desc = dev_get_drvdata(dev);
 if (!nd_desc) {
  nfit_device_unlock(dev);
  return rc;
 }
 acpi_desc = to_acpi_desc(nd_desc);

 mutex_lock(&acpi_desc->init_mutex);
 busy = test_bit(ARS_BUSY, &acpi_desc->scrub_flags)
  && !test_bit(ARS_CANCEL, &acpi_desc->scrub_flags);
 rc = sprintf(buf, "%d%s", acpi_desc->scrub_count, busy ? "+\n" : "\n");

 if (busy && capable(CAP_SYS_RAWIO) && !test_and_set_bit(ARS_POLL,
    &acpi_desc->scrub_flags)) {
  acpi_desc->scrub_tmo = 1;
  mod_delayed_work(nfit_wq, &acpi_desc->dwork, HZ);
 }

 mutex_unlock(&acpi_desc->init_mutex);
 nfit_device_unlock(dev);
 return rc;
}
