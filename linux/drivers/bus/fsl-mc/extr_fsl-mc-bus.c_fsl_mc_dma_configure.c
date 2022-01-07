
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; struct device* parent; } ;


 scalar_t__ dev_is_fsl_mc (struct device*) ;
 int of_dma_configure (struct device*,int ,int ) ;

__attribute__((used)) static int fsl_mc_dma_configure(struct device *dev)
{
 struct device *dma_dev = dev;

 while (dev_is_fsl_mc(dma_dev))
  dma_dev = dma_dev->parent;

 return of_dma_configure(dev, dma_dev->of_node, 0);
}
