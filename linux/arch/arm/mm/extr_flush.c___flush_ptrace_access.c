
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned int FLAG_PA_CORE_IN_MM ;
 unsigned int FLAG_PA_IS_EXEC ;
 int __cpuc_coherent_kern_range (unsigned long,unsigned long) ;
 int __flush_icache_all () ;
 scalar_t__ cache_is_vipt_aliasing () ;
 scalar_t__ cache_is_vivt () ;
 scalar_t__ cache_ops_need_broadcast () ;
 int flush_icache_alias (int ,unsigned long,unsigned long) ;
 int flush_pfn_alias (int ,unsigned long) ;
 int flush_ptrace_access_other ;
 scalar_t__ icache_is_vipt_aliasing () ;
 int page_to_pfn (struct page*) ;
 int smp_call_function (int ,int *,int) ;

__attribute__((used)) static inline
void __flush_ptrace_access(struct page *page, unsigned long uaddr, void *kaddr,
      unsigned long len, unsigned int flags)
{
 if (cache_is_vivt()) {
  if (flags & FLAG_PA_CORE_IN_MM) {
   unsigned long addr = (unsigned long)kaddr;
   __cpuc_coherent_kern_range(addr, addr + len);
  }
  return;
 }

 if (cache_is_vipt_aliasing()) {
  flush_pfn_alias(page_to_pfn(page), uaddr);
  __flush_icache_all();
  return;
 }


 if (flags & FLAG_PA_IS_EXEC) {
  unsigned long addr = (unsigned long)kaddr;
  if (icache_is_vipt_aliasing())
   flush_icache_alias(page_to_pfn(page), uaddr, len);
  else
   __cpuc_coherent_kern_range(addr, addr + len);
  if (cache_ops_need_broadcast())
   smp_call_function(flush_ptrace_access_other,
       ((void*)0), 1);
 }
}
