
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct flush_cache_page_args {unsigned long addr; unsigned long pfn; struct vm_area_struct* vma; } ;


 int R4K_HIT ;
 int local_r4k_flush_cache_page ;
 int r4k_on_each_cpu (int ,int ,struct flush_cache_page_args*) ;

__attribute__((used)) static void r4k_flush_cache_page(struct vm_area_struct *vma,
 unsigned long addr, unsigned long pfn)
{
 struct flush_cache_page_args args;

 args.vma = vma;
 args.addr = addr;
 args.pfn = pfn;

 r4k_on_each_cpu(R4K_HIT, local_r4k_flush_cache_page, &args);
}
