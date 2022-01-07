
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dmar_disabled ;
 scalar_t__ intel_iommu_tboot_noforce ;
 scalar_t__ no_iommu ;
 int pr_warning (char*) ;
 scalar_t__ swiotlb ;
 int tboot_enabled () ;

int tboot_force_iommu(void)
{
 if (!tboot_enabled())
  return 0;

 if (intel_iommu_tboot_noforce)
  return 1;

 if (no_iommu || swiotlb || dmar_disabled)
  pr_warning("Forcing Intel-IOMMU to enabled\n");

 dmar_disabled = 0;



 no_iommu = 0;

 return 1;
}
