
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct acpi_nfit_desc {int init_mutex; int dwork; int scrub_flags; int list; int nvdimm_bus; } ;


 int ARS_CANCEL ;
 int acpi_desc_lock ;
 int cancel_delayed_work_sync (int *) ;
 int flush_workqueue (int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfit_device_lock (struct device*) ;
 int nfit_device_unlock (struct device*) ;
 int nfit_wq ;
 int set_bit (int ,int *) ;
 struct device* to_nvdimm_bus_dev (int ) ;

void acpi_nfit_shutdown(void *data)
{
 struct acpi_nfit_desc *acpi_desc = data;
 struct device *bus_dev = to_nvdimm_bus_dev(acpi_desc->nvdimm_bus);





 mutex_lock(&acpi_desc_lock);
 list_del(&acpi_desc->list);
 mutex_unlock(&acpi_desc_lock);

 mutex_lock(&acpi_desc->init_mutex);
 set_bit(ARS_CANCEL, &acpi_desc->scrub_flags);
 cancel_delayed_work_sync(&acpi_desc->dwork);
 mutex_unlock(&acpi_desc->init_mutex);






 nfit_device_lock(bus_dev);
 nfit_device_unlock(bus_dev);

 flush_workqueue(nfit_wq);
}
