
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_table {scalar_t__ it_index; } ;


 int dump_stack () ;
 int plpar_tce_put (int,int,int ) ;
 int printk (char*,int) ;
 scalar_t__ printk_ratelimit () ;

__attribute__((used)) static void tce_free_pSeriesLP(struct iommu_table *tbl, long tcenum, long npages)
{
 u64 rc;

 while (npages--) {
  rc = plpar_tce_put((u64)tbl->it_index, (u64)tcenum << 12, 0);

  if (rc && printk_ratelimit()) {
   printk("tce_free_pSeriesLP: plpar_tce_put failed. rc=%lld\n", rc);
   printk("\tindex   = 0x%llx\n", (u64)tbl->it_index);
   printk("\ttcenum  = 0x%llx\n", (u64)tcenum);
   dump_stack();
  }

  tcenum++;
 }
}
