
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcibios_fwaddrmap {int * fw_addr; } ;
struct pci_dev {int dummy; } ;
typedef int resource_size_t ;


 scalar_t__ pcibios_fw_addr_done ;
 int pcibios_fwaddrmap_lock ;
 struct pcibios_fwaddrmap* pcibios_fwaddrmap_lookup (struct pci_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

resource_size_t pcibios_retrieve_fw_addr(struct pci_dev *dev, int idx)
{
 unsigned long flags;
 struct pcibios_fwaddrmap *map;
 resource_size_t fw_addr = 0;

 if (pcibios_fw_addr_done)
  return 0;

 spin_lock_irqsave(&pcibios_fwaddrmap_lock, flags);
 map = pcibios_fwaddrmap_lookup(dev);
 if (map)
  fw_addr = map->fw_addr[idx];
 spin_unlock_irqrestore(&pcibios_fwaddrmap_lock, flags);

 return fw_addr;
}
