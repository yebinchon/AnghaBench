
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu {int ctx_lowest_free; int ctx_bitmap; } ;


 int __clear_bit (int,int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline void iommu_free_ctx(struct iommu *iommu, int ctx)
{
 if (likely(ctx)) {
  __clear_bit(ctx, iommu->ctx_bitmap);
  if (ctx < iommu->ctx_lowest_free)
   iommu->ctx_lowest_free = ctx;
 }
}
