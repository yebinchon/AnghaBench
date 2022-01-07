
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {scalar_t__ it_offset; int it_reserved_start; int it_reserved_end; int it_map; } ;


 int clear_bit (scalar_t__,int ) ;

__attribute__((used)) static void iommu_table_release_pages(struct iommu_table *tbl)
{
 int i;





 if (tbl->it_offset == 0)
  clear_bit(0, tbl->it_map);

 for (i = tbl->it_reserved_start; i < tbl->it_reserved_end; ++i)
  clear_bit(i - tbl->it_offset, tbl->it_map);
}
