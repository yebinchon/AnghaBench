
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {scalar_t__ command_addr; scalar_t__ data_addr; int handle; } ;
struct acpi_device {struct acpi_ec* driver_data; int handle; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_ECDT_HID ;
 int ACPI_EC_CLASS ;
 int ACPI_EC_DEVICE_NAME ;
 scalar_t__ AE_CTRL_TERMINATE ;
 int EINVAL ;
 int ENOMEM ;
 int WARN (int,char*,scalar_t__) ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_hid (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 struct acpi_ec* acpi_ec_alloc () ;
 int acpi_ec_free (struct acpi_ec*) ;
 int acpi_ec_remove_query_handlers (struct acpi_ec*,int,int ) ;
 int acpi_ec_setup (struct acpi_ec*,int) ;
 int acpi_handle_debug (int ,char*) ;
 int acpi_handle_info (int ,char*,char*) ;
 int acpi_walk_dep_device_list (int ) ;
 struct acpi_ec* boot_ec ;
 int boot_ec_is_ecdt ;
 scalar_t__ ec_parse_device (int ,int ,struct acpi_ec*,int *) ;
 int request_region (scalar_t__,int,char*) ;
 int strcmp (int ,int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int acpi_ec_add(struct acpi_device *device)
{
 struct acpi_ec *ec = ((void*)0);
 bool dep_update = 1;
 acpi_status status;
 int ret;

 strcpy(acpi_device_name(device), ACPI_EC_DEVICE_NAME);
 strcpy(acpi_device_class(device), ACPI_EC_CLASS);

 if (!strcmp(acpi_device_hid(device), ACPI_ECDT_HID)) {
  boot_ec_is_ecdt = 1;
  ec = boot_ec;
  dep_update = 0;
 } else {
  ec = acpi_ec_alloc();
  if (!ec)
   return -ENOMEM;

  status = ec_parse_device(device->handle, 0, ec, ((void*)0));
  if (status != AE_CTRL_TERMINATE) {
   ret = -EINVAL;
   goto err_alloc;
  }

  if (boot_ec && ec->command_addr == boot_ec->command_addr &&
      ec->data_addr == boot_ec->data_addr) {
   boot_ec_is_ecdt = 0;






   boot_ec->handle = ec->handle;
   acpi_handle_debug(ec->handle, "duplicated.\n");
   acpi_ec_free(ec);
   ec = boot_ec;
  }
 }

 ret = acpi_ec_setup(ec, 1);
 if (ret)
  goto err_query;

 if (ec == boot_ec)
  acpi_handle_info(boot_ec->handle,
     "Boot %s EC used to handle transactions and events\n",
     boot_ec_is_ecdt ? "ECDT" : "DSDT");

 device->driver_data = ec;

 ret = !!request_region(ec->data_addr, 1, "EC data");
 WARN(!ret, "Could not request EC data io port 0x%lx", ec->data_addr);
 ret = !!request_region(ec->command_addr, 1, "EC cmd");
 WARN(!ret, "Could not request EC cmd io port 0x%lx", ec->command_addr);

 if (dep_update) {

  acpi_walk_dep_device_list(ec->handle);
 }
 acpi_handle_debug(ec->handle, "enumerated.\n");
 return 0;

err_query:
 if (ec != boot_ec)
  acpi_ec_remove_query_handlers(ec, 1, 0);
err_alloc:
 if (ec != boot_ec)
  acpi_ec_free(ec);
 return ret;
}
