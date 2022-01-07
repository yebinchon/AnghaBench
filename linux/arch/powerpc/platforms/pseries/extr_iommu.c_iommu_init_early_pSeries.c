
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_dev_setup; int dma_bus_setup; int iommu_bypass_supported; } ;


 int FW_FEATURE_LPAR ;
 int disable_ddw ;
 int dma_iommu_ops ;
 scalar_t__ firmware_has_feature (int ) ;
 int iommu_bypass_supported_pSeriesLP ;
 int iommu_mem_nb ;
 int iommu_reconfig_nb ;
 int is_secure_guest () ;
 scalar_t__ of_chosen ;
 scalar_t__ of_get_property (scalar_t__,char*,int *) ;
 int of_reconfig_notifier_register (int *) ;
 int pci_dma_bus_setup_pSeries ;
 int pci_dma_bus_setup_pSeriesLP ;
 int pci_dma_dev_setup_pSeries ;
 int pci_dma_dev_setup_pSeriesLP ;
 TYPE_1__ pseries_pci_controller_ops ;
 int register_memory_notifier (int *) ;
 int set_pci_dma_ops (int *) ;

void iommu_init_early_pSeries(void)
{
 if (of_chosen && of_get_property(of_chosen, "linux,iommu-off", ((void*)0)))
  return;

 if (firmware_has_feature(FW_FEATURE_LPAR)) {
  pseries_pci_controller_ops.dma_bus_setup = pci_dma_bus_setup_pSeriesLP;
  pseries_pci_controller_ops.dma_dev_setup = pci_dma_dev_setup_pSeriesLP;
  if (!disable_ddw)
   pseries_pci_controller_ops.iommu_bypass_supported =
    iommu_bypass_supported_pSeriesLP;
 } else {
  pseries_pci_controller_ops.dma_bus_setup = pci_dma_bus_setup_pSeries;
  pseries_pci_controller_ops.dma_dev_setup = pci_dma_dev_setup_pSeries;
 }


 of_reconfig_notifier_register(&iommu_reconfig_nb);
 register_memory_notifier(&iommu_mem_nb);
 if (!is_secure_guest())
  set_pci_dma_ops(&dma_iommu_ops);
}
