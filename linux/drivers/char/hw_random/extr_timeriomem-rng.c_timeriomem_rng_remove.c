
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeriomem_rng_private {int timer; int rng_ops; } ;
struct platform_device {int dummy; } ;


 int hrtimer_cancel (int *) ;
 int hwrng_unregister (int *) ;
 struct timeriomem_rng_private* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int timeriomem_rng_remove(struct platform_device *pdev)
{
 struct timeriomem_rng_private *priv = platform_get_drvdata(pdev);

 hwrng_unregister(&priv->rng_ops);
 hrtimer_cancel(&priv->timer);

 return 0;
}
