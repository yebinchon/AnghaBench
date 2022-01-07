
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_device {int node; } ;
struct platform_device {int dummy; } ;


 int ENODEV ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ssp_device* platform_get_drvdata (struct platform_device*) ;
 int ssp_lock ;

__attribute__((used)) static int pxa_ssp_remove(struct platform_device *pdev)
{
 struct ssp_device *ssp;

 ssp = platform_get_drvdata(pdev);
 if (ssp == ((void*)0))
  return -ENODEV;

 mutex_lock(&ssp_lock);
 list_del(&ssp->node);
 mutex_unlock(&ssp_lock);

 return 0;
}
