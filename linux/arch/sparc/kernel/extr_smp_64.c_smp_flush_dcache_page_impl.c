
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;


 int __local_flush_dcache_page (struct page*) ;
 int __pa (void*) ;
 int atomic_inc (int *) ;
 scalar_t__ cheetah ;
 scalar_t__ cheetah_plus ;
 scalar_t__ cpu_online (int) ;
 int cpumask_of (int) ;
 int dcpage_flushes ;
 int dcpage_flushes_xcall ;
 int get_cpu () ;
 scalar_t__ hypervisor ;
 void* page_address (struct page*) ;
 int * page_mapping_file (struct page*) ;
 int put_cpu () ;
 scalar_t__ spitfire ;
 scalar_t__ tlb_type ;
 int xcall_deliver (int,int ,int,int ) ;
 int xcall_flush_dcache_page_cheetah ;
 int xcall_flush_dcache_page_spitfire ;

void smp_flush_dcache_page_impl(struct page *page, int cpu)
{
 int this_cpu;

 if (tlb_type == hypervisor)
  return;





 this_cpu = get_cpu();

 if (cpu == this_cpu) {
  __local_flush_dcache_page(page);
 } else if (cpu_online(cpu)) {
  void *pg_addr = page_address(page);
  u64 data0 = 0;

  if (tlb_type == spitfire) {
   data0 = ((u64)&xcall_flush_dcache_page_spitfire);
   if (page_mapping_file(page) != ((void*)0))
    data0 |= ((u64)1 << 32);
  } else if (tlb_type == cheetah || tlb_type == cheetah_plus) {



  }
  if (data0) {
   xcall_deliver(data0, __pa(pg_addr),
          (u64) pg_addr, cpumask_of(cpu));



  }
 }

 put_cpu();
}
