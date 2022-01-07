
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbus_dram_window {int mbus_attr; int base; int size; } ;
struct mbus_dram_target_info {int num_cs; int mbus_dram_target_id; struct mbus_dram_window* cs; } ;
struct ahci_host_priv {scalar_t__ mmio; } ;


 scalar_t__ AHCI_WINDOW_BASE (int) ;
 scalar_t__ AHCI_WINDOW_CTRL (int) ;
 scalar_t__ AHCI_WINDOW_SIZE (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ahci_mvebu_mbus_config(struct ahci_host_priv *hpriv,
       const struct mbus_dram_target_info *dram)
{
 int i;

 for (i = 0; i < 4; i++) {
  writel(0, hpriv->mmio + AHCI_WINDOW_CTRL(i));
  writel(0, hpriv->mmio + AHCI_WINDOW_BASE(i));
  writel(0, hpriv->mmio + AHCI_WINDOW_SIZE(i));
 }

 for (i = 0; i < dram->num_cs; i++) {
  const struct mbus_dram_window *cs = dram->cs + i;

  writel((cs->mbus_attr << 8) |
         (dram->mbus_dram_target_id << 4) | 1,
         hpriv->mmio + AHCI_WINDOW_CTRL(i));
  writel(cs->base >> 16, hpriv->mmio + AHCI_WINDOW_BASE(i));
  writel(((cs->size - 1) & 0xffff0000),
         hpriv->mmio + AHCI_WINDOW_SIZE(i));
 }
}
