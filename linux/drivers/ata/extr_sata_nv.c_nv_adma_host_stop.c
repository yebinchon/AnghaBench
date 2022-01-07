
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_host {int dev; } ;


 int NV_MCP_SATA_CFG_20 ;
 int NV_MCP_SATA_CFG_20_PORT0_EN ;
 int NV_MCP_SATA_CFG_20_PORT0_PWB_EN ;
 int NV_MCP_SATA_CFG_20_PORT1_EN ;
 int NV_MCP_SATA_CFG_20_PORT1_PWB_EN ;
 int nv_ck804_host_stop (struct ata_host*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void nv_adma_host_stop(struct ata_host *host)
{
 struct pci_dev *pdev = to_pci_dev(host->dev);
 u32 tmp32;


 pci_read_config_dword(pdev, NV_MCP_SATA_CFG_20, &tmp32);
 tmp32 &= ~(NV_MCP_SATA_CFG_20_PORT0_EN |
     NV_MCP_SATA_CFG_20_PORT0_PWB_EN |
     NV_MCP_SATA_CFG_20_PORT1_EN |
     NV_MCP_SATA_CFG_20_PORT1_PWB_EN);

 pci_write_config_dword(pdev, NV_MCP_SATA_CFG_20, tmp32);

 nv_ck804_host_stop(host);
}
