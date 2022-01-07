
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int EPROBE_DEFER ;
 int __platform_get_irq (struct platform_device*,int) ;

int platform_irq_count(struct platform_device *dev)
{
 int ret, nr = 0;

 while ((ret = __platform_get_irq(dev, nr)) >= 0)
  nr++;

 if (ret == -EPROBE_DEFER)
  return ret;

 return nr;
}
