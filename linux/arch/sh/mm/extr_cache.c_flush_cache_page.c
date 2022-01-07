
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct flusher_data {unsigned long addr1; unsigned long addr2; struct vm_area_struct* vma; } ;


 int cacheop_on_each_cpu (int ,void*,int) ;
 int local_flush_cache_page ;

void flush_cache_page(struct vm_area_struct *vma, unsigned long addr,
        unsigned long pfn)
{
 struct flusher_data data;

 data.vma = vma;
 data.addr1 = addr;
 data.addr2 = pfn;

 cacheop_on_each_cpu(local_flush_cache_page, (void *)&data, 1);
}
