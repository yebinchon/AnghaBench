
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_err (struct device*,char*,size_t) ;
 int dump_leak () ;

__attribute__((used)) static void iommu_full(struct device *dev, size_t size, int dir)
{
 dev_err(dev, "PCI-DMA: Out of IOMMU space for %lu bytes\n", size);



}
