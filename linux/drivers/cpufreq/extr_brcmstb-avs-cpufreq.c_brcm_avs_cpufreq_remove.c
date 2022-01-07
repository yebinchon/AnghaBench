
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int avs_intr_base; int base; } ;
struct platform_device {int dummy; } ;


 int brcm_avs_driver ;
 int cpufreq_unregister_driver (int *) ;
 int iounmap (int ) ;
 struct private_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int brcm_avs_cpufreq_remove(struct platform_device *pdev)
{
 struct private_data *priv;
 int ret;

 ret = cpufreq_unregister_driver(&brcm_avs_driver);
 if (ret)
  return ret;

 priv = platform_get_drvdata(pdev);
 iounmap(priv->base);
 iounmap(priv->avs_intr_base);

 return 0;
}
