
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeh_dev {int dummy; } ;
struct TYPE_2__ {int piar_lock; } ;


 struct eeh_dev* __eeh_addr_cache_get_device (unsigned long) ;
 TYPE_1__ pci_io_addr_cache_root ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct eeh_dev *eeh_addr_cache_get_dev(unsigned long addr)
{
 struct eeh_dev *edev;
 unsigned long flags;

 spin_lock_irqsave(&pci_io_addr_cache_root.piar_lock, flags);
 edev = __eeh_addr_cache_get_device(addr);
 spin_unlock_irqrestore(&pci_io_addr_cache_root.piar_lock, flags);
 return edev;
}
