
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmi_user {int dummy; } ;
struct device {int dummy; } ;
struct acpi_ipmi_device {int ipmi_ifnum; struct ipmi_user* user_interface; int dev; int handle; int tx_msg_lock; int tx_msg_list; int head; int kref; } ;
typedef int acpi_handle ;
struct TYPE_2__ {int ipmi_hndlrs; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_1__ driver_data ;
 int get_device (struct device*) ;
 int ipmi_create_user (int,int *,struct acpi_ipmi_device*,struct ipmi_user**) ;
 int kfree (struct acpi_ipmi_device*) ;
 int kref_init (int *) ;
 struct acpi_ipmi_device* kzalloc (int,int ) ;
 int put_device (struct device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct acpi_ipmi_device *
ipmi_dev_alloc(int iface, struct device *dev, acpi_handle handle)
{
 struct acpi_ipmi_device *ipmi_device;
 int err;
 struct ipmi_user *user;

 ipmi_device = kzalloc(sizeof(*ipmi_device), GFP_KERNEL);
 if (!ipmi_device)
  return ((void*)0);

 kref_init(&ipmi_device->kref);
 INIT_LIST_HEAD(&ipmi_device->head);
 INIT_LIST_HEAD(&ipmi_device->tx_msg_list);
 spin_lock_init(&ipmi_device->tx_msg_lock);
 ipmi_device->handle = handle;
 ipmi_device->dev = get_device(dev);
 ipmi_device->ipmi_ifnum = iface;

 err = ipmi_create_user(iface, &driver_data.ipmi_hndlrs,
          ipmi_device, &user);
 if (err) {
  put_device(dev);
  kfree(ipmi_device);
  return ((void*)0);
 }
 ipmi_device->user_interface = user;

 return ipmi_device;
}
