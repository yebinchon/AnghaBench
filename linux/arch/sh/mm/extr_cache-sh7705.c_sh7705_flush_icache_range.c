
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flusher_data {unsigned long addr1; unsigned long addr2; } ;


 int __flush_wback_region (void*,unsigned long) ;

__attribute__((used)) static void sh7705_flush_icache_range(void *args)
{
 struct flusher_data *data = args;
 unsigned long start, end;

 start = data->addr1;
 end = data->addr2;

 __flush_wback_region((void *)start, end - start);
}
