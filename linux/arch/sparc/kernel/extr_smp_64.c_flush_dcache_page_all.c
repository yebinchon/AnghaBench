
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;


 int __local_flush_dcache_page (struct page*) ;
 int __pa (void*) ;
 int atomic_inc (int *) ;
 scalar_t__ cheetah ;
 scalar_t__ cheetah_plus ;
 int cpu_online_mask ;
 int dcpage_flushes ;
 int dcpage_flushes_xcall ;
 scalar_t__ hypervisor ;
 void* page_address (struct page*) ;
 int * page_mapping_file (struct page*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ spitfire ;
 scalar_t__ tlb_type ;
 int xcall_deliver (int,int ,int,int ) ;
 int xcall_flush_dcache_page_cheetah ;
 int xcall_flush_dcache_page_spitfire ;

void flush_dcache_page_all(struct mm_struct *mm, struct page *page)
{
 void *pg_addr;
 u64 data0;

 if (tlb_type == hypervisor)
  return;

 preempt_disable();




 data0 = 0;
 pg_addr = page_address(page);
 if (tlb_type == spitfire) {
  data0 = ((u64)&xcall_flush_dcache_page_spitfire);
  if (page_mapping_file(page) != ((void*)0))
   data0 |= ((u64)1 << 32);
 } else if (tlb_type == cheetah || tlb_type == cheetah_plus) {



 }
 if (data0) {
  xcall_deliver(data0, __pa(pg_addr),
         (u64) pg_addr, cpu_online_mask);



 }
 __local_flush_dcache_page(page);

 preempt_enable();
}
