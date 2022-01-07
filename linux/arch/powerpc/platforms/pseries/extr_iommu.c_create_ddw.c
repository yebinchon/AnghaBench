
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct pci_dn {int busno; int devfn; TYPE_1__* phb; } ;
struct pci_dev {int dev; } ;
struct device_node {int dummy; } ;
struct ddw_create_response {int addr_lo; int addr_hi; int liobn; } ;
struct TYPE_2__ {int buid; } ;


 int BUID_HI (int ) ;
 int BUID_LO (int ) ;
 struct pci_dn* PCI_DN (struct device_node*) ;
 int dev_info (int *,char*,int const,int,int ,int ,int,int,int,int ,int ,int ) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;
 scalar_t__ rtas_busy_delay (int) ;
 int rtas_call (int const,int,int,int*,int,int ,int ,int,int) ;

__attribute__((used)) static int create_ddw(struct pci_dev *dev, const u32 *ddw_avail,
   struct ddw_create_response *create, int page_shift,
   int window_shift)
{
 struct device_node *dn;
 struct pci_dn *pdn;
 u32 cfg_addr;
 u64 buid;
 int ret;







 dn = pci_device_to_OF_node(dev);
 pdn = PCI_DN(dn);
 buid = pdn->phb->buid;
 cfg_addr = ((pdn->busno << 16) | (pdn->devfn << 8));

 do {

  ret = rtas_call(ddw_avail[1], 5, 4, (u32 *)create,
    cfg_addr, BUID_HI(buid), BUID_LO(buid),
    page_shift, window_shift);
 } while (rtas_busy_delay(ret));
 dev_info(&dev->dev,
  "ibm,create-pe-dma-window(%x) %x %x %x %x %x returned %d "
  "(liobn = 0x%x starting addr = %x %x)\n", ddw_avail[1],
   cfg_addr, BUID_HI(buid), BUID_LO(buid), page_shift,
   window_shift, ret, create->liobn, create->addr_hi, create->addr_lo);

 return ret;
}
