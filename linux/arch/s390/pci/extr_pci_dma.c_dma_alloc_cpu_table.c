
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_ATOMIC ;
 int ZPCI_TABLE_ENTRIES ;
 unsigned long ZPCI_TABLE_INVALID ;
 int dma_region_table_cache ;
 unsigned long* kmem_cache_alloc (int ,int ) ;

unsigned long *dma_alloc_cpu_table(void)
{
 unsigned long *table, *entry;

 table = kmem_cache_alloc(dma_region_table_cache, GFP_ATOMIC);
 if (!table)
  return ((void*)0);

 for (entry = table; entry < table + ZPCI_TABLE_ENTRIES; entry++)
  *entry = ZPCI_TABLE_INVALID;
 return table;
}
