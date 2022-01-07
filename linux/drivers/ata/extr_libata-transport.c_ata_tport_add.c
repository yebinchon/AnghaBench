
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int release; struct device* parent; int * type; } ;
struct ata_port {int host; int link; int print_id; struct device tdev; } ;


 int ata_acpi_bind_port (struct ata_port*) ;
 int ata_host_get (int ) ;
 int ata_host_put (int ) ;
 int ata_port_type ;
 int ata_tlink_add (int *) ;
 int ata_tport_release ;
 int dev_set_name (struct device*,char*,int ) ;
 int device_add (struct device*) ;
 int device_del (struct device*) ;
 int device_enable_async_suspend (struct device*) ;
 int device_initialize (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_forbid (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int put_device (struct device*) ;
 int transport_add_device (struct device*) ;
 int transport_configure_device (struct device*) ;
 int transport_destroy_device (struct device*) ;
 int transport_remove_device (struct device*) ;
 int transport_setup_device (struct device*) ;

int ata_tport_add(struct device *parent,
    struct ata_port *ap)
{
 int error;
 struct device *dev = &ap->tdev;

 device_initialize(dev);
 dev->type = &ata_port_type;

 dev->parent = parent;
 ata_host_get(ap->host);
 dev->release = ata_tport_release;
 dev_set_name(dev, "ata%d", ap->print_id);
 transport_setup_device(dev);
 ata_acpi_bind_port(ap);
 error = device_add(dev);
 if (error) {
  goto tport_err;
 }

 device_enable_async_suspend(dev);
 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);
 pm_runtime_forbid(dev);

 transport_add_device(dev);
 transport_configure_device(dev);

 error = ata_tlink_add(&ap->link);
 if (error) {
  goto tport_link_err;
 }
 return 0;

 tport_link_err:
 transport_remove_device(dev);
 device_del(dev);

 tport_err:
 transport_destroy_device(dev);
 put_device(dev);
 ata_host_put(ap->host);
 return error;
}
