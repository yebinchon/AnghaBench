
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hvc; int list; } ;
struct port {int guest_connected; int host_connected; int kref; int name; int debugfs_file; int cdev; TYPE_3__* dev; TYPE_2__* portdev; TYPE_1__ cons; int inbuf_lock; int waitqueue; int list; } ;
struct TYPE_8__ {int class; } ;
struct TYPE_7__ {int devt; int kobj; } ;
struct TYPE_6__ {int ports_lock; } ;


 int cdev_del (int ) ;
 int debugfs_remove (int ) ;
 int device_destroy (int ,int ) ;
 int hvc_remove (int ) ;
 scalar_t__ is_console_port (struct port*) ;
 int kfree (int ) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 TYPE_4__ pdrvdata ;
 int pdrvdata_lock ;
 int port_attribute_group ;
 int remove_port ;
 int remove_port_data (struct port*) ;
 int send_sigio_to_port (struct port*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sysfs_remove_group (int *,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void unplug_port(struct port *port)
{
 spin_lock_irq(&port->portdev->ports_lock);
 list_del(&port->list);
 spin_unlock_irq(&port->portdev->ports_lock);

 spin_lock_irq(&port->inbuf_lock);
 if (port->guest_connected) {

  send_sigio_to_port(port);


  port->guest_connected = 0;
  port->host_connected = 0;

  wake_up_interruptible(&port->waitqueue);
 }
 spin_unlock_irq(&port->inbuf_lock);

 if (is_console_port(port)) {
  spin_lock_irq(&pdrvdata_lock);
  list_del(&port->cons.list);
  spin_unlock_irq(&pdrvdata_lock);
  hvc_remove(port->cons.hvc);
 }

 remove_port_data(port);






 port->portdev = ((void*)0);

 sysfs_remove_group(&port->dev->kobj, &port_attribute_group);
 device_destroy(pdrvdata.class, port->dev->devt);
 cdev_del(port->cdev);

 debugfs_remove(port->debugfs_file);
 kfree(port->name);






 kref_put(&port->kref, remove_port);
}
