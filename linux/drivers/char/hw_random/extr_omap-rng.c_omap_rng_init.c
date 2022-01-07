
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_rng_dev {TYPE_1__* pdata; } ;
struct hwrng {scalar_t__ priv; } ;
struct TYPE_2__ {int (* init ) (struct omap_rng_dev*) ;} ;


 int stub1 (struct omap_rng_dev*) ;

__attribute__((used)) static int omap_rng_init(struct hwrng *rng)
{
 struct omap_rng_dev *priv;

 priv = (struct omap_rng_dev *)rng->priv;
 return priv->pdata->init(priv);
}
