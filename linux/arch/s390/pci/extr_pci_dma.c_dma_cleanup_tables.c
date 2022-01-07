
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZPCI_TABLE_ENTRIES ;
 int dma_free_cpu_table (unsigned long*) ;
 int dma_free_seg_table (unsigned long) ;
 scalar_t__ reg_entry_isvalid (unsigned long) ;

void dma_cleanup_tables(unsigned long *table)
{
 int rtx;

 if (!table)
  return;

 for (rtx = 0; rtx < ZPCI_TABLE_ENTRIES; rtx++)
  if (reg_entry_isvalid(table[rtx]))
   dma_free_seg_table(table[rtx]);

 dma_free_cpu_table(table);
}
