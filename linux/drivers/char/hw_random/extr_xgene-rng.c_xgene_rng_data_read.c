
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_rng_dev {int datum_size; scalar_t__ csr_base; } ;
struct hwrng {scalar_t__ priv; } ;


 int READY_MASK ;
 scalar_t__ RNG_INOUT_0 ;
 scalar_t__ RNG_INTR_STS_ACK ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int xgene_rng_data_read(struct hwrng *rng, u32 *data)
{
 struct xgene_rng_dev *ctx = (struct xgene_rng_dev *) rng->priv;
 int i;

 for (i = 0; i < ctx->datum_size; i++)
  data[i] = readl(ctx->csr_base + RNG_INOUT_0 + i * 4);


 writel(READY_MASK, ctx->csr_base + RNG_INTR_STS_ACK);

 return ctx->datum_size << 2;
}
