
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_hp_work {int work; int src; struct acpi_device* adev; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_status ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int AE_ERROR ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int acpi_hotplug_work_fn ;
 int kacpi_hotplug_wq ;
 int kfree (struct acpi_hp_work*) ;
 struct acpi_hp_work* kmalloc (int,int ) ;
 int queue_work (int ,int *) ;

acpi_status acpi_hotplug_schedule(struct acpi_device *adev, u32 src)
{
 struct acpi_hp_work *hpw;

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC,
    "Scheduling hotplug event (%p, %u) for deferred execution.\n",
    adev, src));

 hpw = kmalloc(sizeof(*hpw), GFP_KERNEL);
 if (!hpw)
  return AE_NO_MEMORY;

 INIT_WORK(&hpw->work, acpi_hotplug_work_fn);
 hpw->adev = adev;
 hpw->src = src;






 if (!queue_work(kacpi_hotplug_wq, &hpw->work)) {
  kfree(hpw);
  return AE_ERROR;
 }
 return AE_OK;
}
