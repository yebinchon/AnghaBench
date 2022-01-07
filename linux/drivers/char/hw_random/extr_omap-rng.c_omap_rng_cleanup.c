
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_rng_dev {TYPE_1__* pdata; } ;
struct hwrng {scalar_t__ priv; } ;
struct TYPE_2__ {int (* cleanup ) (struct omap_rng_dev*) ;} ;


 int stub1 (struct omap_rng_dev*) ;

__attribute__((used)) static void omap_rng_cleanup(struct hwrng *rng)
{
 struct omap_rng_dev *priv;

 priv = (struct omap_rng_dev *)rng->priv;
 priv->pdata->cleanup(priv);
}
