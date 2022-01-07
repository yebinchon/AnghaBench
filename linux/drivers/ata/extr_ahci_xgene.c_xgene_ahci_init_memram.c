
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_ahci_context {int dev; scalar_t__ csr_diag; } ;


 scalar_t__ BLOCK_MEM_RDY ;
 scalar_t__ CFG_MEM_RAM_SHUTDOWN ;
 int ENODEV ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int msleep (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int xgene_ahci_init_memram(struct xgene_ahci_context *ctx)
{
 dev_dbg(ctx->dev, "Release memory from shutdown\n");
 writel(0x0, ctx->csr_diag + CFG_MEM_RAM_SHUTDOWN);
 readl(ctx->csr_diag + CFG_MEM_RAM_SHUTDOWN);
 msleep(1);
 if (readl(ctx->csr_diag + BLOCK_MEM_RDY) != 0xFFFFFFFF) {
  dev_err(ctx->dev, "failed to release memory from shutdown\n");
  return -ENODEV;
 }
 return 0;
}
