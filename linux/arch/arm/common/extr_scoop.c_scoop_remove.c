
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct scoop_dev {int base; TYPE_1__ gpio; } ;
struct platform_device {int dummy; } ;


 int EINVAL ;
 int gpiochip_remove (TYPE_1__*) ;
 int iounmap (int ) ;
 int kfree (struct scoop_dev*) ;
 struct scoop_dev* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int scoop_remove(struct platform_device *pdev)
{
 struct scoop_dev *sdev = platform_get_drvdata(pdev);

 if (!sdev)
  return -EINVAL;

 if (sdev->gpio.base != -1)
  gpiochip_remove(&sdev->gpio);

 platform_set_drvdata(pdev, ((void*)0));
 iounmap(sdev->base);
 kfree(sdev);

 return 0;
}
