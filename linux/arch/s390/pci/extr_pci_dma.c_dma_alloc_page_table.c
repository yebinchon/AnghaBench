
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_ATOMIC ;
 unsigned long ZPCI_PTE_INVALID ;
 int ZPCI_PT_ENTRIES ;
 int dma_page_table_cache ;
 unsigned long* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static unsigned long *dma_alloc_page_table(void)
{
 unsigned long *table, *entry;

 table = kmem_cache_alloc(dma_page_table_cache, GFP_ATOMIC);
 if (!table)
  return ((void*)0);

 for (entry = table; entry < table + ZPCI_PT_ENTRIES; entry++)
  *entry = ZPCI_PTE_INVALID;
 return table;
}
