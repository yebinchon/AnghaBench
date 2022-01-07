
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {scalar_t__ it_offset; unsigned long it_reserved_start; unsigned long it_reserved_end; int it_map; int it_size; } ;


 int WARN_ON_ONCE (int) ;
 int set_bit (unsigned long,int ) ;

__attribute__((used)) static void iommu_table_reserve_pages(struct iommu_table *tbl,
  unsigned long res_start, unsigned long res_end)
{
 int i;

 WARN_ON_ONCE(res_end < res_start);





 if (tbl->it_offset == 0)
  set_bit(0, tbl->it_map);

 tbl->it_reserved_start = res_start;
 tbl->it_reserved_end = res_end;


 if (res_start && res_end &&
   (tbl->it_offset + tbl->it_size < res_start ||
    res_end < tbl->it_offset))
  return;

 for (i = tbl->it_reserved_start; i < tbl->it_reserved_end; ++i)
  set_bit(i - tbl->it_offset, tbl->it_map);
}
