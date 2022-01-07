
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ata_port_operations {int dummy; } ;
struct ata_host {int kref; struct ata_port_operations* ops; struct device* dev; int n_tags; int eh_mutex; int lock; } ;


 int ATA_MAX_QUEUE ;
 int kref_init (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void ata_host_init(struct ata_host *host, struct device *dev,
     struct ata_port_operations *ops)
{
 spin_lock_init(&host->lock);
 mutex_init(&host->eh_mutex);
 host->n_tags = ATA_MAX_QUEUE;
 host->dev = dev;
 host->ops = ops;
 kref_init(&host->kref);
}
