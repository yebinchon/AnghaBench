
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_rng_dev {int datum_size; scalar_t__ csr_base; int dev; int revision; int failure_timer; scalar_t__ failure_cnt; } ;
struct hwrng {scalar_t__ priv; } ;


 int HW_PATCH_LEVEL_RD (int ) ;
 int MAJOR_HW_REV_RD (int ) ;
 int MINOR_HW_REV_RD (int ) ;
 scalar_t__ RNG_EIP_REV ;
 int RNG_MAX_DATUM ;
 scalar_t__ RNG_OPTIONS ;
 int dev_dbg (int ,char*,int ,...) ;
 int readl (scalar_t__) ;
 int timer_setup (int *,int ,int ) ;
 int xgene_rng_expired_timer ;
 int xgene_rng_init_internal (struct xgene_rng_dev*) ;

__attribute__((used)) static int xgene_rng_init(struct hwrng *rng)
{
 struct xgene_rng_dev *ctx = (struct xgene_rng_dev *) rng->priv;

 ctx->failure_cnt = 0;
 timer_setup(&ctx->failure_timer, xgene_rng_expired_timer, 0);

 ctx->revision = readl(ctx->csr_base + RNG_EIP_REV);

 dev_dbg(ctx->dev, "Rev %d.%d.%d\n",
  MAJOR_HW_REV_RD(ctx->revision),
  MINOR_HW_REV_RD(ctx->revision),
  HW_PATCH_LEVEL_RD(ctx->revision));

 dev_dbg(ctx->dev, "Options 0x%08X",
  readl(ctx->csr_base + RNG_OPTIONS));

 xgene_rng_init_internal(ctx);

 ctx->datum_size = RNG_MAX_DATUM;

 return 0;
}
