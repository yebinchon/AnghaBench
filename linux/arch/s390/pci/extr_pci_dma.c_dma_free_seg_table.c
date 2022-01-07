
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZPCI_TABLE_ENTRIES ;
 int dma_free_cpu_table (unsigned long*) ;
 int dma_free_page_table (int ) ;
 unsigned long* get_rt_sto (unsigned long) ;
 int get_st_pto (unsigned long) ;
 scalar_t__ reg_entry_isvalid (unsigned long) ;

void dma_free_seg_table(unsigned long entry)
{
 unsigned long *sto = get_rt_sto(entry);
 int sx;

 for (sx = 0; sx < ZPCI_TABLE_ENTRIES; sx++)
  if (reg_entry_isvalid(sto[sx]))
   dma_free_page_table(get_st_pto(sto[sx]));

 dma_free_cpu_table(sto);
}
