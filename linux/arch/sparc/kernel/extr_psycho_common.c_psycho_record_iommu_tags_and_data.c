
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_pbm_info {unsigned long controller_regs; } ;


 scalar_t__ PSYCHO_IOMMU_DATA ;
 scalar_t__ PSYCHO_IOMMU_TAG ;
 int upa_readq (scalar_t__) ;
 int upa_writeq (int ,scalar_t__) ;

__attribute__((used)) static void psycho_record_iommu_tags_and_data(struct pci_pbm_info *pbm,
           u64 *tag, u64 *data)
{
 int i;

 for (i = 0; i < 16; i++) {
  unsigned long base = pbm->controller_regs;
  unsigned long off = i * 8UL;

  tag[i] = upa_readq(base + PSYCHO_IOMMU_TAG+off);
  data[i] = upa_readq(base + PSYCHO_IOMMU_DATA+off);


  upa_writeq(0, base + PSYCHO_IOMMU_TAG + off);
  upa_writeq(0, base + PSYCHO_IOMMU_DATA + off);
 }
}
