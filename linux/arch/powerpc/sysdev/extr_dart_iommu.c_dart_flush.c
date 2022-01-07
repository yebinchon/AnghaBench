
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int dummy; } ;


 scalar_t__ dart_dirty ;
 int dart_tlb_invalidate_all () ;
 int mb () ;

__attribute__((used)) static void dart_flush(struct iommu_table *tbl)
{
 mb();
 if (dart_dirty) {
  dart_tlb_invalidate_all();
  dart_dirty = 0;
 }
}
