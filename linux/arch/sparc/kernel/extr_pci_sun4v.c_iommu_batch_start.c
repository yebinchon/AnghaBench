
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_batch {unsigned long prot; unsigned long entry; scalar_t__ npages; struct device* dev; } ;
struct device {int dummy; } ;


 int iommu_batch ;
 struct iommu_batch* this_cpu_ptr (int *) ;

__attribute__((used)) static inline void iommu_batch_start(struct device *dev, unsigned long prot, unsigned long entry)
{
 struct iommu_batch *p = this_cpu_ptr(&iommu_batch);

 p->dev = dev;
 p->prot = prot;
 p->entry = entry;
 p->npages = 0;
}
