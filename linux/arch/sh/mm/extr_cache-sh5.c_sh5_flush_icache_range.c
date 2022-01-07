
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flusher_data {unsigned long addr1; unsigned long addr2; } ;


 int __flush_purge_region (void*,unsigned long) ;
 int sh64_icache_inv_kernel_range (unsigned long,unsigned long) ;
 int wmb () ;

__attribute__((used)) static void sh5_flush_icache_range(void *args)
{
 struct flusher_data *data = args;
 unsigned long start, end;

 start = data->addr1;
 end = data->addr2;

 __flush_purge_region((void *)start, end);
 wmb();
 sh64_icache_inv_kernel_range(start, end);
}
