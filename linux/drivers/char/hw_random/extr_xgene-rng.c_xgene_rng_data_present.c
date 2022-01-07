
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xgene_rng_dev {scalar_t__ csr_base; } ;
struct hwrng {scalar_t__ priv; } ;


 scalar_t__ READY_MASK ;
 scalar_t__ RNG_INTR_STS_ACK ;
 scalar_t__ XGENE_RNG_RETRY_COUNT ;
 int XGENE_RNG_RETRY_INTERVAL ;
 scalar_t__ readl (scalar_t__) ;
 int udelay (int ) ;

__attribute__((used)) static int xgene_rng_data_present(struct hwrng *rng, int wait)
{
 struct xgene_rng_dev *ctx = (struct xgene_rng_dev *) rng->priv;
 u32 i, val = 0;

 for (i = 0; i < XGENE_RNG_RETRY_COUNT; i++) {
  val = readl(ctx->csr_base + RNG_INTR_STS_ACK);
  if ((val & READY_MASK) || !wait)
   break;
  udelay(XGENE_RNG_RETRY_INTERVAL);
 }

 return (val & READY_MASK);
}
