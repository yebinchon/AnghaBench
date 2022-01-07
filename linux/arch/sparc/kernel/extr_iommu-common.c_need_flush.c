
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_map_table {int flags; } ;


 int IOMMU_NEED_FLUSH ;

__attribute__((used)) static inline bool need_flush(struct iommu_map_table *iommu)
{
 return ((iommu->flags & IOMMU_NEED_FLUSH) != 0);
}
