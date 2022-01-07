
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dma_page_table_cache ;
 int kmem_cache_free (int ,void*) ;

__attribute__((used)) static void dma_free_page_table(void *table)
{
 kmem_cache_free(dma_page_table_cache, table);
}
