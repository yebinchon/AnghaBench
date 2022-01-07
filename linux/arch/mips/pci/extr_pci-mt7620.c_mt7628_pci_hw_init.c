
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;


 int BIT (int) ;
 int RALINK_CLKCFG1 ;
 int RALINK_GPIOMODE ;
 int RALINK_PCIE0_CLK_EN ;
 int RALINK_PCIEPHY_P0_CTL_OFFSET ;
 int dev_err (int *,char*,unsigned int) ;
 int mdelay (int) ;
 int pci_config_read (int *,int ,int,int,int*) ;
 int pci_config_write (int *,int ,int,int,int) ;
 int pcie_m32 (int,int,int ) ;
 int reset_control_deassert (int ) ;
 int rstpcie0 ;
 int rt_sysc_m32 (int ,int ,int ) ;

__attribute__((used)) static int mt7628_pci_hw_init(struct platform_device *pdev)
{
 u32 val = 0;


 rt_sysc_m32(BIT(16), 0, RALINK_GPIOMODE);
 reset_control_deassert(rstpcie0);


 rt_sysc_m32(0, RALINK_PCIE0_CLK_EN, RALINK_CLKCFG1);
 mdelay(100);


 pcie_m32(~0xff, 0x5, RALINK_PCIEPHY_P0_CTL_OFFSET);

 pci_config_read(((void*)0), 0, 0x70c, 4, &val);
 val &= ~(0xff) << 8;
 val |= 0x50 << 8;
 pci_config_write(((void*)0), 0, 0x70c, 4, val);

 pci_config_read(((void*)0), 0, 0x70c, 4, &val);
 dev_err(&pdev->dev, "Port 0 N_FTS = %x\n", (unsigned int) val);

 return 0;
}
