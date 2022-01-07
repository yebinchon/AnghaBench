
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct TYPE_8__ {int lock; } ;
struct TYPE_7__ {int lock; } ;
struct TYPE_10__ {TYPE_3__* rxq; TYPE_2__ txq; TYPE_1__ cq; int vcc_sf; void* rx_avail; void* tx_avail; scalar_t__ flags; int membase; int irq; int iobase; struct pci_dev* pci_dev; } ;
typedef TYPE_4__ amb_dev ;
struct TYPE_9__ {int lock; } ;


 void* ATM_OC3_PCR ;
 unsigned char NUM_RX_POOLS ;
 int bus_to_virt (int ) ;
 int mutex_init (int *) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,TYPE_4__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void setup_dev(amb_dev *dev, struct pci_dev *pci_dev)
{
      unsigned char pool;


      dev->pci_dev = pci_dev;
      pci_set_drvdata(pci_dev, dev);

      dev->iobase = pci_resource_start (pci_dev, 1);
      dev->irq = pci_dev->irq;
      dev->membase = bus_to_virt(pci_resource_start(pci_dev, 0));


      dev->flags = 0;




      dev->tx_avail = ATM_OC3_PCR;
      dev->rx_avail = ATM_OC3_PCR;



      mutex_init(&dev->vcc_sf);




      spin_lock_init (&dev->cq.lock);
      spin_lock_init (&dev->txq.lock);
      for (pool = 0; pool < NUM_RX_POOLS; ++pool)
 spin_lock_init (&dev->rxq[pool].lock);
}
