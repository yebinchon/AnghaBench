
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int max_bus_speed; int fmb_update; int max_msi; int msi_addr; int dma_mask; int tlb_refresh; } ;
struct clp_rsp_query_pci_grp {int version; int mui; int noi; int msia; int dasm; int refresh; } ;


 int PCIE_SPEED_5_0GT ;
 int PCI_SPEED_UNKNOWN ;

__attribute__((used)) static void clp_store_query_pci_fngrp(struct zpci_dev *zdev,
          struct clp_rsp_query_pci_grp *response)
{
 zdev->tlb_refresh = response->refresh;
 zdev->dma_mask = response->dasm;
 zdev->msi_addr = response->msia;
 zdev->max_msi = response->noi;
 zdev->fmb_update = response->mui;

 switch (response->version) {
 case 1:
  zdev->max_bus_speed = PCIE_SPEED_5_0GT;
  break;
 default:
  zdev->max_bus_speed = PCI_SPEED_UNKNOWN;
  break;
 }
}
