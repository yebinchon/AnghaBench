
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mcs814x_rng_priv {scalar_t__ priv; } ;
struct hwrng {scalar_t__ priv; } ;


 int hwrng_unregister (struct mcs814x_rng_priv*) ;
 int kfree (struct mcs814x_rng_priv*) ;
 struct mcs814x_rng_priv* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int mcs814x_rng_remove(struct platform_device *pdev)
{
 struct hwrng *rng = platform_get_drvdata(pdev);
 struct mcs814x_rng_priv *priv = (struct mcs814x_rng_priv *)rng->priv;

 hwrng_unregister(rng);
 kfree(priv);
 kfree(rng);
 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
