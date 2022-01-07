
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
struct flusher_data {unsigned long addr1; unsigned long addr2; struct vm_area_struct* vma; } ;


 int sh64_dcache_purge_user_range (int ,unsigned long,unsigned long) ;
 int sh64_icache_inv_user_page_range (int ,unsigned long,unsigned long) ;

__attribute__((used)) static void sh5_flush_cache_range(void *args)
{
 struct flusher_data *data = args;
 struct vm_area_struct *vma;
 unsigned long start, end;

 vma = data->vma;
 start = data->addr1;
 end = data->addr2;

 sh64_dcache_purge_user_range(vma->vm_mm, start, end);
 sh64_icache_inv_user_page_range(vma->vm_mm, start, end);
}
