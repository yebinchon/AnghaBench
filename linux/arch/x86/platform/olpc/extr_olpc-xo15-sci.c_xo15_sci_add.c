
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int kobj; } ;
struct TYPE_6__ {scalar_t__ valid; } ;
struct TYPE_7__ {TYPE_1__ flags; } ;
struct acpi_device {TYPE_4__ dev; TYPE_2__ wakeup; int handle; } ;
typedef int acpi_status ;
struct TYPE_8__ {int attr; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_GPE_EDGE_TRIGGERED ;
 int EC_SCI_SRC_ALL ;
 int EINVAL ;
 int ENODEV ;
 int XO15_SCI_CLASS ;
 int XO15_SCI_DEVICE_NAME ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 int acpi_enable_gpe (int *,unsigned long long) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_install_gpe_handler (int *,unsigned long long,int ,int ,struct acpi_device*) ;
 int acpi_remove_gpe_handler (int *,unsigned long long,int ) ;
 int cancel_work_sync (int *) ;
 int dev_info (TYPE_4__*,char*,unsigned long long) ;
 int device_init_wakeup (TYPE_4__*,int) ;
 TYPE_3__ lid_wake_on_close_attr ;
 int olpc_ec_mask_write (int ) ;
 int process_sci_queue () ;
 int sci_work ;
 int strcpy (int ,int ) ;
 int sysfs_create_file (int *,int *) ;
 unsigned long long xo15_sci_gpe ;
 int xo15_sci_gpe_handler ;

__attribute__((used)) static int xo15_sci_add(struct acpi_device *device)
{
 unsigned long long tmp;
 acpi_status status;
 int r;

 if (!device)
  return -EINVAL;

 strcpy(acpi_device_name(device), XO15_SCI_DEVICE_NAME);
 strcpy(acpi_device_class(device), XO15_SCI_CLASS);


 status = acpi_evaluate_integer(device->handle, "_GPE", ((void*)0), &tmp);
 if (ACPI_FAILURE(status))
  return -EINVAL;

 xo15_sci_gpe = tmp;
 status = acpi_install_gpe_handler(((void*)0), xo15_sci_gpe,
       ACPI_GPE_EDGE_TRIGGERED,
       xo15_sci_gpe_handler, device);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 dev_info(&device->dev, "Initialized, GPE = 0x%lx\n", xo15_sci_gpe);

 r = sysfs_create_file(&device->dev.kobj, &lid_wake_on_close_attr.attr);
 if (r)
  goto err_sysfs;


 process_sci_queue();
 olpc_ec_mask_write(EC_SCI_SRC_ALL);

 acpi_enable_gpe(((void*)0), xo15_sci_gpe);


 if (device->wakeup.flags.valid)
  device_init_wakeup(&device->dev, 1);

 return 0;

err_sysfs:
 acpi_remove_gpe_handler(((void*)0), xo15_sci_gpe, xo15_sci_gpe_handler);
 cancel_work_sync(&sci_work);
 return r;
}
