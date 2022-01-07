
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pci_dev {int dummy; } ;


 int* mcf_host_irq ;
 int* mcf_host_slot2sid ;

__attribute__((used)) static int mcf_pci_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 int sid;

 sid = mcf_host_slot2sid[slot];
 if (sid)
  return mcf_host_irq[sid];
 return 0;
}
