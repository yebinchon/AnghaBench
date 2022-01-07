
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_rng {scalar_t__ base; } ;
struct hwrng {int dummy; } ;


 scalar_t__ RNG_CTRL ;
 int RNG_READY ;
 int TIMEOUT_POLL ;
 int USEC_POLL ;
 int readl (scalar_t__) ;
 int readl_poll_timeout_atomic (scalar_t__,int,int,int ,int ) ;
 struct mtk_rng* to_mtk_rng (struct hwrng*) ;

__attribute__((used)) static bool mtk_rng_wait_ready(struct hwrng *rng, bool wait)
{
 struct mtk_rng *priv = to_mtk_rng(rng);
 int ready;

 ready = readl(priv->base + RNG_CTRL) & RNG_READY;
 if (!ready && wait)
  readl_poll_timeout_atomic(priv->base + RNG_CTRL, ready,
       ready & RNG_READY, USEC_POLL,
       TIMEOUT_POLL);
 return !!ready;
}
