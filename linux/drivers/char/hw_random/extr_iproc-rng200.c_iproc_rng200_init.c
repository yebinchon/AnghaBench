
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iproc_rng200_dev {scalar_t__ base; } ;
struct hwrng {int dummy; } ;


 scalar_t__ RNG_CTRL_OFFSET ;
 int RNG_CTRL_RNG_RBGEN_ENABLE ;
 int RNG_CTRL_RNG_RBGEN_MASK ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 struct iproc_rng200_dev* to_rng_priv (struct hwrng*) ;

__attribute__((used)) static int iproc_rng200_init(struct hwrng *rng)
{
 struct iproc_rng200_dev *priv = to_rng_priv(rng);
 uint32_t val;


 val = ioread32(priv->base + RNG_CTRL_OFFSET);
 val &= ~RNG_CTRL_RNG_RBGEN_MASK;
 val |= RNG_CTRL_RNG_RBGEN_ENABLE;
 iowrite32(val, priv->base + RNG_CTRL_OFFSET);

 return 0;
}
