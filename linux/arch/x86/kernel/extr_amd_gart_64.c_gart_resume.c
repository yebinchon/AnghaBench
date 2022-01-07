
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_gart_translations () ;
 int gart_fixup_northbridges () ;
 int pr_info (char*) ;

__attribute__((used)) static void gart_resume(void)
{
 pr_info("PCI-DMA: Resuming GART IOMMU\n");

 gart_fixup_northbridges();

 enable_gart_translations();
}
