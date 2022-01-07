
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ DMA_BIT_MASK (int) ;
 unsigned long HV_EOK ;
 int HV_PCI_TSBID (int ,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long pci_sun4v_iommu_demap (unsigned long,int ,unsigned long) ;
 unsigned long pci_sun4v_iotsb_demap (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long*) ;
 int pr_err_ratelimited (char*,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dma_4v_iommu_demap(struct device *dev, unsigned long devhandle,
          dma_addr_t dvma, unsigned long iotsb_num,
          unsigned long entry, unsigned long npages)
{
 unsigned long num, flags;
 unsigned long ret;

 local_irq_save(flags);
 do {
  if (dvma <= DMA_BIT_MASK(32)) {
   num = pci_sun4v_iommu_demap(devhandle,
          HV_PCI_TSBID(0, entry),
          npages);
  } else {
   ret = pci_sun4v_iotsb_demap(devhandle, iotsb_num,
          entry, npages, &num);
   if (unlikely(ret != HV_EOK)) {
    pr_err_ratelimited("pci_iotsb_demap() failed with error: %ld\n",
         ret);
   }
  }
  entry += num;
  npages -= num;
 } while (npages != 0);
 local_irq_restore(flags);
}
