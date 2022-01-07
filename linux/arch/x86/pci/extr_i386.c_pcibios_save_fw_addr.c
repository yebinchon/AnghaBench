
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcibios_fwaddrmap {void** fw_addr; int list; int dev; } ;
struct pci_dev {int dummy; } ;
typedef void* resource_size_t ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct pcibios_fwaddrmap* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pci_dev_get (struct pci_dev*) ;
 scalar_t__ pcibios_fw_addr_done ;
 int pcibios_fwaddrmap_lock ;
 struct pcibios_fwaddrmap* pcibios_fwaddrmap_lookup (struct pci_dev*) ;
 int pcibios_fwaddrmappings ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
pcibios_save_fw_addr(struct pci_dev *dev, int idx, resource_size_t fw_addr)
{
 unsigned long flags;
 struct pcibios_fwaddrmap *map;

 if (pcibios_fw_addr_done)
  return;

 spin_lock_irqsave(&pcibios_fwaddrmap_lock, flags);
 map = pcibios_fwaddrmap_lookup(dev);
 if (!map) {
  spin_unlock_irqrestore(&pcibios_fwaddrmap_lock, flags);
  map = kzalloc(sizeof(*map), GFP_KERNEL);
  if (!map)
   return;

  map->dev = pci_dev_get(dev);
  map->fw_addr[idx] = fw_addr;
  INIT_LIST_HEAD(&map->list);

  spin_lock_irqsave(&pcibios_fwaddrmap_lock, flags);
  list_add_tail(&map->list, &pcibios_fwaddrmappings);
 } else
  map->fw_addr[idx] = fw_addr;
 spin_unlock_irqrestore(&pcibios_fwaddrmap_lock, flags);
}
