
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct locomo {int dummy; } ;


 int __locomo_remove (struct locomo*) ;
 struct locomo* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int locomo_remove(struct platform_device *dev)
{
 struct locomo *lchip = platform_get_drvdata(dev);

 if (lchip) {
  __locomo_remove(lchip);
  platform_set_drvdata(dev, ((void*)0));
 }

 return 0;
}
