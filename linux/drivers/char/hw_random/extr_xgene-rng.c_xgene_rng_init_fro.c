
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_rng_dev {scalar_t__ csr_base; } ;


 scalar_t__ RNG_ALARMMASK ;
 scalar_t__ RNG_ALARMSTOP ;
 scalar_t__ RNG_FRODETUNE ;
 scalar_t__ RNG_FROENABLE ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void xgene_rng_init_fro(struct xgene_rng_dev *ctx, u32 fro_val)
{
 writel(fro_val, ctx->csr_base + RNG_FRODETUNE);
 writel(0x00000000, ctx->csr_base + RNG_ALARMMASK);
 writel(0x00000000, ctx->csr_base + RNG_ALARMSTOP);
 writel(0xFFFFFFFF, ctx->csr_base + RNG_FROENABLE);
}
