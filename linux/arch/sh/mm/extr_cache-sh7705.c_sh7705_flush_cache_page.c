
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flusher_data {unsigned long addr2; } ;


 unsigned long PAGE_SHIFT ;
 int __flush_dcache_page (unsigned long) ;

__attribute__((used)) static void sh7705_flush_cache_page(void *args)
{
 struct flusher_data *data = args;
 unsigned long pfn = data->addr2;

 __flush_dcache_page(pfn << PAGE_SHIFT);
}
