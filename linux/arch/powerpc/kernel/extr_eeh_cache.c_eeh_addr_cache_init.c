
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int piar_lock; } ;


 TYPE_1__ pci_io_addr_cache_root ;
 int spin_lock_init (int *) ;

void eeh_addr_cache_init(void)
{
 spin_lock_init(&pci_io_addr_cache_root.piar_lock);
}
