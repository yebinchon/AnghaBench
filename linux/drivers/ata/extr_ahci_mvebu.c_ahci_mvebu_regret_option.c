
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_host_priv {scalar_t__ mmio; } ;


 scalar_t__ AHCI_VENDOR_SPECIFIC_0_ADDR ;
 scalar_t__ AHCI_VENDOR_SPECIFIC_0_DATA ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ahci_mvebu_regret_option(struct ahci_host_priv *hpriv)
{





 writel(0x4, hpriv->mmio + AHCI_VENDOR_SPECIFIC_0_ADDR);
 writel(0x80, hpriv->mmio + AHCI_VENDOR_SPECIFIC_0_DATA);
}
