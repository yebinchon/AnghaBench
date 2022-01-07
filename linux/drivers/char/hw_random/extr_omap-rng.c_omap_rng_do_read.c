
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_rng_dev {TYPE_1__* pdata; scalar_t__ base; } ;
struct hwrng {scalar_t__ priv; } ;
struct TYPE_2__ {size_t data_size; int (* data_present ) (struct omap_rng_dev*) ;scalar_t__* regs; } ;


 size_t RNG_INTACK_REG ;
 size_t RNG_OUTPUT_0_REG ;
 int RNG_REG_INTACK_RDY_MASK ;
 int memcpy_fromio (void*,scalar_t__,size_t) ;
 int omap_rng_write (struct omap_rng_dev*,size_t,int ) ;
 int stub1 (struct omap_rng_dev*) ;
 int udelay (int) ;

__attribute__((used)) static int omap_rng_do_read(struct hwrng *rng, void *data, size_t max,
       bool wait)
{
 struct omap_rng_dev *priv;
 int i, present;

 priv = (struct omap_rng_dev *)rng->priv;

 if (max < priv->pdata->data_size)
  return 0;

 for (i = 0; i < 20; i++) {
  present = priv->pdata->data_present(priv);
  if (present || !wait)
   break;

  udelay(10);
 }
 if (!present)
  return 0;

 memcpy_fromio(data, priv->base + priv->pdata->regs[RNG_OUTPUT_0_REG],
        priv->pdata->data_size);

 if (priv->pdata->regs[RNG_INTACK_REG])
  omap_rng_write(priv, RNG_INTACK_REG, RNG_REG_INTACK_RDY_MASK);

 return priv->pdata->data_size;
}
