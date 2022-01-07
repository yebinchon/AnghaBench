
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct flush_data {unsigned long addr1; unsigned long addr2; struct vm_area_struct* vma; } ;


 int ipi_flush_cache_page ;
 int on_each_cpu (int ,struct flush_data*,int) ;

void flush_cache_page(struct vm_area_struct *vma,
       unsigned long address, unsigned long pfn)
{
 struct flush_data fd = {
  .vma = vma,
  .addr1 = address,
  .addr2 = pfn,
 };
 on_each_cpu(ipi_flush_cache_page, &fd, 1);
}
