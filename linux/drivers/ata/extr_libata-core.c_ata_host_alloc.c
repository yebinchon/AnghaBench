
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ata_port {int port_no; } ;
struct ata_host {int n_ports; struct ata_port** ports; int kref; struct device* dev; int eh_mutex; int lock; } ;


 int DPRINTK (char*) ;
 int GFP_KERNEL ;
 int ata_devres_release ;
 struct ata_port* ata_port_alloc (struct ata_host*) ;
 int dev_set_drvdata (struct device*,struct ata_host*) ;
 int devres_add (struct device*,void*) ;
 void* devres_alloc (int ,int ,int ) ;
 int devres_open_group (struct device*,int *,int ) ;
 int devres_release_group (struct device*,int *) ;
 int devres_remove_group (struct device*,int *) ;
 int kfree (struct ata_host*) ;
 int kref_init (int *) ;
 struct ata_host* kzalloc (size_t,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

struct ata_host *ata_host_alloc(struct device *dev, int max_ports)
{
 struct ata_host *host;
 size_t sz;
 int i;
 void *dr;

 DPRINTK("ENTER\n");


 sz = sizeof(struct ata_host) + (max_ports + 1) * sizeof(void *);
 host = kzalloc(sz, GFP_KERNEL);
 if (!host)
  return ((void*)0);

 if (!devres_open_group(dev, ((void*)0), GFP_KERNEL))
  goto err_free;

 dr = devres_alloc(ata_devres_release, 0, GFP_KERNEL);
 if (!dr)
  goto err_out;

 devres_add(dev, dr);
 dev_set_drvdata(dev, host);

 spin_lock_init(&host->lock);
 mutex_init(&host->eh_mutex);
 host->dev = dev;
 host->n_ports = max_ports;
 kref_init(&host->kref);


 for (i = 0; i < max_ports; i++) {
  struct ata_port *ap;

  ap = ata_port_alloc(host);
  if (!ap)
   goto err_out;

  ap->port_no = i;
  host->ports[i] = ap;
 }

 devres_remove_group(dev, ((void*)0));
 return host;

 err_out:
 devres_release_group(dev, ((void*)0));
 err_free:
 kfree(host);
 return ((void*)0);
}
