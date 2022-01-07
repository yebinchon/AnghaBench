
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_ahci_context {int dev; scalar_t__ csr_core; scalar_t__ csr_axi; } ;
struct ahci_host_priv {scalar_t__ mmio; struct xgene_ahci_context* plat_data; } ;


 scalar_t__ BUSCTLREG ;
 scalar_t__ ERRINTSTATUSMASK ;
 scalar_t__ HOST_IRQ_STAT ;
 scalar_t__ INTSTATUSMASK ;
 scalar_t__ INT_SLV_TMOMASK ;
 scalar_t__ IOFMSTRWAUX ;
 int MAX_AHCI_CHN_PERCTR ;
 scalar_t__ MSTRDERRATTRIBUTES ;
 scalar_t__ MSTWRERRATTRIBUTES ;
 scalar_t__ SLVRDERRATTRIBUTES ;
 scalar_t__ SLVWRERRATTRIBUTES ;
 int dev_dbg (int ,char*,scalar_t__,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;
 int xgene_ahci_init_memram (struct xgene_ahci_context*) ;
 int xgene_ahci_set_phy_cfg (struct xgene_ahci_context*,int) ;

__attribute__((used)) static int xgene_ahci_hw_init(struct ahci_host_priv *hpriv)
{
 struct xgene_ahci_context *ctx = hpriv->plat_data;
 int i;
 int rc;
 u32 val;


 rc = xgene_ahci_init_memram(ctx);
 if (rc)
  return rc;

 for (i = 0; i < MAX_AHCI_CHN_PERCTR; i++)
  xgene_ahci_set_phy_cfg(ctx, i);


 writel(0xffffffff, hpriv->mmio + HOST_IRQ_STAT);
 readl(hpriv->mmio + HOST_IRQ_STAT);
 writel(0, ctx->csr_core + INTSTATUSMASK);
 val = readl(ctx->csr_core + INTSTATUSMASK);
 dev_dbg(ctx->dev, "top level interrupt mask 0x%X value 0x%08X\n",
  INTSTATUSMASK, val);

 writel(0x0, ctx->csr_core + ERRINTSTATUSMASK);
 readl(ctx->csr_core + ERRINTSTATUSMASK);
 writel(0x0, ctx->csr_axi + INT_SLV_TMOMASK);
 readl(ctx->csr_axi + INT_SLV_TMOMASK);


 writel(0xffffffff, ctx->csr_core + SLVRDERRATTRIBUTES);
 writel(0xffffffff, ctx->csr_core + SLVWRERRATTRIBUTES);
 writel(0xffffffff, ctx->csr_core + MSTRDERRATTRIBUTES);
 writel(0xffffffff, ctx->csr_core + MSTWRERRATTRIBUTES);


 val = readl(ctx->csr_core + BUSCTLREG);
 val &= ~0x00000002;
 val &= ~0x00000001;
 writel(val, ctx->csr_core + BUSCTLREG);

 val = readl(ctx->csr_core + IOFMSTRWAUX);
 val |= (1 << 3);
 val |= (1 << 9);
 writel(val, ctx->csr_core + IOFMSTRWAUX);
 val = readl(ctx->csr_core + IOFMSTRWAUX);
 dev_dbg(ctx->dev, "coherency 0x%X value 0x%08X\n",
  IOFMSTRWAUX, val);

 return rc;
}
