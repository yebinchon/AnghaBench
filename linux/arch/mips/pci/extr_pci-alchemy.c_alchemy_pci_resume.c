
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alchemy_pci_context {int wired_entry; scalar_t__ regs; int * pm; } ;


 scalar_t__ PCI_REG_B2BBASE0_VID ;
 scalar_t__ PCI_REG_B2BBASE1_SID ;
 scalar_t__ PCI_REG_B2BMASK_CCH ;
 scalar_t__ PCI_REG_CLASSREV ;
 scalar_t__ PCI_REG_CMEM ;
 scalar_t__ PCI_REG_CONFIG ;
 scalar_t__ PCI_REG_ID ;
 scalar_t__ PCI_REG_MBAR ;
 scalar_t__ PCI_REG_MWBASE_REV_CCL ;
 scalar_t__ PCI_REG_MWMASK_DEV ;
 scalar_t__ PCI_REG_PARAM ;
 scalar_t__ PCI_REG_TIMEOUT ;
 struct alchemy_pci_context* __alchemy_pci_ctx ;
 int __raw_writel (int ,scalar_t__) ;
 int alchemy_pci_wired_entry (struct alchemy_pci_context*) ;
 int wmb () ;

__attribute__((used)) static void alchemy_pci_resume(void)
{
 struct alchemy_pci_context *ctx = __alchemy_pci_ctx;
 if (!ctx)
  return;

 __raw_writel(ctx->pm[0], ctx->regs + PCI_REG_CMEM);
 __raw_writel(ctx->pm[2], ctx->regs + PCI_REG_B2BMASK_CCH);
 __raw_writel(ctx->pm[3], ctx->regs + PCI_REG_B2BBASE0_VID);
 __raw_writel(ctx->pm[4], ctx->regs + PCI_REG_B2BBASE1_SID);
 __raw_writel(ctx->pm[5], ctx->regs + PCI_REG_MWMASK_DEV);
 __raw_writel(ctx->pm[6], ctx->regs + PCI_REG_MWBASE_REV_CCL);
 __raw_writel(ctx->pm[7], ctx->regs + PCI_REG_ID);
 __raw_writel(ctx->pm[8], ctx->regs + PCI_REG_CLASSREV);
 __raw_writel(ctx->pm[9], ctx->regs + PCI_REG_PARAM);
 __raw_writel(ctx->pm[10], ctx->regs + PCI_REG_MBAR);
 __raw_writel(ctx->pm[11], ctx->regs + PCI_REG_TIMEOUT);
 wmb();
 __raw_writel(ctx->pm[1], ctx->regs + PCI_REG_CONFIG);
 wmb();




 ctx->wired_entry = 8191;
 alchemy_pci_wired_entry(ctx);
}
