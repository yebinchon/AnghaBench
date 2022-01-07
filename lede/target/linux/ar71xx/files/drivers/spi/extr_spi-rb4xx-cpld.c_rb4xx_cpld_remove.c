
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct rb4xx_cpld {int dummy; } ;


 struct rb4xx_cpld* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct rb4xx_cpld*) ;
 int * rb4xx_cpld ;

__attribute__((used)) static int rb4xx_cpld_remove(struct spi_device *spi)
{
 struct rb4xx_cpld *cpld;

 rb4xx_cpld = ((void*)0);
 cpld = dev_get_drvdata(&spi->dev);
 dev_set_drvdata(&spi->dev, ((void*)0));
 kfree(cpld);

 return 0;
}
