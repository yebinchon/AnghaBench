
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct flush_data {unsigned long addr1; unsigned long addr2; struct vm_area_struct* vma; } ;


 int ipi_flush_tlb_range ;
 int on_each_cpu (int ,struct flush_data*,int) ;

void flush_tlb_range(struct vm_area_struct *vma,
       unsigned long start, unsigned long end)
{
 struct flush_data fd = {
  .vma = vma,
  .addr1 = start,
  .addr2 = end,
 };
 on_each_cpu(ipi_flush_tlb_range, &fd, 1);
}
