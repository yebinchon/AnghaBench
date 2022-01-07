
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ata_host {int lock; TYPE_2__** ports; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {scalar_t__ scr_addr; } ;
struct TYPE_4__ {TYPE_1__ ioaddr; } ;


 scalar_t__ NV_INT_STATUS ;
 int ioread8 (scalar_t__) ;
 int nv_do_interrupt (struct ata_host*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t nv_nf2_interrupt(int irq, void *dev_instance)
{
 struct ata_host *host = dev_instance;
 u8 irq_stat;
 irqreturn_t ret;

 spin_lock(&host->lock);
 irq_stat = ioread8(host->ports[0]->ioaddr.scr_addr + NV_INT_STATUS);
 ret = nv_do_interrupt(host, irq_stat);
 spin_unlock(&host->lock);

 return ret;
}
