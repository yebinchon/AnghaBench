
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int start; int end; } ;
struct pci_dev {int irq; } ;
struct device_node {int dummy; } ;
typedef int DEFINE_SPINLOCK ;


 int BUG () ;
 int ENODEV ;
 unsigned long HZ ;
 int MAX_FLAGS ;
 int MAX_FUN ;
 int MAX_RXCH ;
 int MAX_TXCH ;
 int PAS_DMA_CAP_RXCH ;
 int PAS_DMA_CAP_RXCH_RCHN_M ;
 int PAS_DMA_CAP_RXCH_RCHN_S ;
 int PAS_DMA_CAP_TXCH ;
 int PAS_DMA_CAP_TXCH_TCHN_M ;
 int PAS_DMA_CAP_TXCH_TCHN_S ;
 int PAS_DMA_COM_CFG ;
 int PAS_DMA_COM_RXCMD ;
 int PAS_DMA_COM_RXCMD_EN ;
 int PAS_DMA_COM_RXSTA ;
 int PAS_DMA_COM_TXCMD ;
 int PAS_DMA_COM_TXCMD_EN ;
 int PAS_DMA_COM_TXSTA ;
 int PAS_DMA_TXF_CFLG0 ;
 int PAS_DMA_TXF_CFLG1 ;
 int PCI_VENDOR_ID_PASEMI ;
 int __set_bit (int,int ) ;
 int base_hw_irq ;
 struct pci_dev* dma_pdev ;
 void* dma_regs ;
 int dma_status ;
 int flags_free ;
 int fun_free ;
 void* iob_regs ;
 int ioremap_cache (int,int ) ;
 unsigned long jiffies ;
 void** mac_regs ;
 int machine_is (int ) ;
 void* map_onedev (struct pci_dev*,int ) ;
 int num_rxch ;
 int num_txch ;
 int of_address_to_resource (struct device_node*,int,struct resource*) ;
 int pasemi ;
 int pasemi_read_dma_reg (int ) ;
 int pasemi_write_dma_reg (int ,int) ;
 int pci_dev_put (struct pci_dev*) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int,struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pr_info (char*,int,int) ;
 int pr_warn (char*) ;
 int resource_size (struct resource*) ;
 int rxch_free ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int txch_free ;
 int virq_to_hw (int ) ;

int pasemi_dma_init(void)
{
 static DEFINE_SPINLOCK(init_lock);
 struct pci_dev *iob_pdev;
 struct pci_dev *pdev;
 struct resource res;
 struct device_node *dn;
 int i, intf, err = 0;
 unsigned long timeout;
 u32 tmp;

 if (!machine_is(pasemi))
  return -ENODEV;

 spin_lock(&init_lock);


 if (dma_pdev)
  goto out;

 iob_pdev = pci_get_device(PCI_VENDOR_ID_PASEMI, 0xa001, ((void*)0));
 if (!iob_pdev) {
  BUG();
  pr_warn("Can't find I/O Bridge\n");
  err = -ENODEV;
  goto out;
 }
 iob_regs = map_onedev(iob_pdev, 0);

 dma_pdev = pci_get_device(PCI_VENDOR_ID_PASEMI, 0xa007, ((void*)0));
 if (!dma_pdev) {
  BUG();
  pr_warn("Can't find DMA controller\n");
  err = -ENODEV;
  goto out;
 }
 dma_regs = map_onedev(dma_pdev, 0);
 base_hw_irq = virq_to_hw(dma_pdev->irq);

 pci_read_config_dword(dma_pdev, PAS_DMA_CAP_TXCH, &tmp);
 num_txch = (tmp & PAS_DMA_CAP_TXCH_TCHN_M) >> PAS_DMA_CAP_TXCH_TCHN_S;

 pci_read_config_dword(dma_pdev, PAS_DMA_CAP_RXCH, &tmp);
 num_rxch = (tmp & PAS_DMA_CAP_RXCH_RCHN_M) >> PAS_DMA_CAP_RXCH_RCHN_S;

 intf = 0;
 for (pdev = pci_get_device(PCI_VENDOR_ID_PASEMI, 0xa006, ((void*)0));
      pdev;
      pdev = pci_get_device(PCI_VENDOR_ID_PASEMI, 0xa006, pdev))
  mac_regs[intf++] = map_onedev(pdev, 0);

 pci_dev_put(pdev);

 for (pdev = pci_get_device(PCI_VENDOR_ID_PASEMI, 0xa005, ((void*)0));
      pdev;
      pdev = pci_get_device(PCI_VENDOR_ID_PASEMI, 0xa005, pdev))
  mac_regs[intf++] = map_onedev(pdev, 0);

 pci_dev_put(pdev);

 dn = pci_device_to_OF_node(iob_pdev);
 if (dn)
  err = of_address_to_resource(dn, 1, &res);
 if (!dn || err) {

  res.start = 0xfd800000;
  res.end = res.start + 0x1000;
 }
 dma_status = ioremap_cache(res.start, resource_size(&res));
 pci_dev_put(iob_pdev);

 for (i = 0; i < MAX_TXCH; i++)
  __set_bit(i, txch_free);

 for (i = 0; i < MAX_RXCH; i++)
  __set_bit(i, rxch_free);

 timeout = jiffies + HZ;
 pasemi_write_dma_reg(PAS_DMA_COM_RXCMD, 0);
 while (pasemi_read_dma_reg(PAS_DMA_COM_RXSTA) & 1) {
  if (time_after(jiffies, timeout)) {
   pr_warn("Warning: Could not disable RX section\n");
   break;
  }
 }

 timeout = jiffies + HZ;
 pasemi_write_dma_reg(PAS_DMA_COM_TXCMD, 0);
 while (pasemi_read_dma_reg(PAS_DMA_COM_TXSTA) & 1) {
  if (time_after(jiffies, timeout)) {
   pr_warn("Warning: Could not disable TX section\n");
   break;
  }
 }


 tmp = pasemi_read_dma_reg(PAS_DMA_COM_CFG);
 pasemi_write_dma_reg(PAS_DMA_COM_CFG, tmp | 0x18000000);


 pasemi_write_dma_reg(PAS_DMA_COM_TXCMD, PAS_DMA_COM_TXCMD_EN);


 pasemi_write_dma_reg(PAS_DMA_COM_RXCMD, PAS_DMA_COM_RXCMD_EN);

 for (i = 0; i < MAX_FLAGS; i++)
  __set_bit(i, flags_free);

 for (i = 0; i < MAX_FUN; i++)
  __set_bit(i, fun_free);


 pasemi_write_dma_reg(PAS_DMA_TXF_CFLG0, 0xffffffff);
 pasemi_write_dma_reg(PAS_DMA_TXF_CFLG1, 0xffffffff);

 pr_info("PA Semi PWRficient DMA library initialized "
  "(%d tx, %d rx channels)\n", num_txch, num_rxch);

out:
 spin_unlock(&init_lock);
 return err;
}
