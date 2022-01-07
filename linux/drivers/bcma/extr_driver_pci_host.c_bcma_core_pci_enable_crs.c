
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val16 ;
typedef int u8 ;
typedef int u16 ;
struct bcma_drv_pci {TYPE_1__* core; } ;
struct bcma_bus {int dummy; } ;
struct TYPE_2__ {struct bcma_bus* bus; } ;


 int BCMA_CORE_PCI_RC_CRS_VISIBILITY ;
 int BCMA_PCI_SLOT_MAX ;
 int PCI_CAP_ID_EXP ;
 int PCI_EXP_RTCAP ;
 int PCI_EXP_RTCTL ;
 int PCI_EXP_RTCTL_CRSSVE ;
 int PCI_VENDOR_ID ;
 int bcma_err (struct bcma_bus*,char*,int) ;
 int bcma_extpci_read_config (struct bcma_drv_pci*,int,int ,int,int*,int) ;
 int bcma_find_pci_capability (struct bcma_drv_pci*,int ,int ,int ,int *,int *) ;
 int udelay (int) ;

__attribute__((used)) static void bcma_core_pci_enable_crs(struct bcma_drv_pci *pc)
{
 struct bcma_bus *bus = pc->core->bus;
 u8 cap_ptr, root_ctrl, root_cap, dev;
 u16 val16;
 int i;

 cap_ptr = bcma_find_pci_capability(pc, 0, 0, PCI_CAP_ID_EXP, ((void*)0),
        ((void*)0));
 root_cap = cap_ptr + PCI_EXP_RTCAP;
 bcma_extpci_read_config(pc, 0, 0, root_cap, &val16, sizeof(u16));
 if (val16 & BCMA_CORE_PCI_RC_CRS_VISIBILITY) {

  root_ctrl = cap_ptr + PCI_EXP_RTCTL;
  val16 = PCI_EXP_RTCTL_CRSSVE;
  bcma_extpci_read_config(pc, 0, 0, root_ctrl, &val16,
     sizeof(u16));
  for (dev = 1; dev < BCMA_PCI_SLOT_MAX; dev++) {
   for (i = 0; i < 100000; i++) {
    bcma_extpci_read_config(pc, dev, 0,
       PCI_VENDOR_ID, &val16,
       sizeof(val16));
    if (val16 != 0x1)
     break;
    udelay(10);
   }
   if (val16 == 0x1)
    bcma_err(bus, "PCI: Broken device in slot %d\n",
      dev);
  }
 }
}
