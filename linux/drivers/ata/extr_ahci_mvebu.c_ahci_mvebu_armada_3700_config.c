
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ahci_host_priv {scalar_t__ mmio; } ;


 scalar_t__ AHCI_VENDOR_SPECIFIC_0_ADDR ;
 scalar_t__ AHCI_VENDOR_SPECIFIC_0_DATA ;
 int BIT (int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ahci_mvebu_armada_3700_config(struct ahci_host_priv *hpriv)
{
 u32 reg;

 writel(0, hpriv->mmio + AHCI_VENDOR_SPECIFIC_0_ADDR);

 reg = readl(hpriv->mmio + AHCI_VENDOR_SPECIFIC_0_DATA);
 reg |= BIT(6);
 writel(reg, hpriv->mmio + AHCI_VENDOR_SPECIFIC_0_DATA);

 return 0;
}
