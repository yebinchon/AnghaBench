
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_tlb_info {int dummy; } ;


 int PAGE_SHIFT ;
 unsigned long TLB_FLUSH_ALL ;
 int do_flush_tlb_all ;
 int do_kernel_range_flush ;
 struct flush_tlb_info* get_flush_tlb_info (int *,unsigned long,unsigned long,int ,int,int ) ;
 int on_each_cpu (int ,struct flush_tlb_info*,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int put_flush_tlb_info () ;
 unsigned long tlb_single_page_flush_ceiling ;

void flush_tlb_kernel_range(unsigned long start, unsigned long end)
{

 if (end == TLB_FLUSH_ALL ||
     (end - start) > tlb_single_page_flush_ceiling << PAGE_SHIFT) {
  on_each_cpu(do_flush_tlb_all, ((void*)0), 1);
 } else {
  struct flush_tlb_info *info;

  preempt_disable();
  info = get_flush_tlb_info(((void*)0), start, end, 0, 0, 0);

  on_each_cpu(do_kernel_range_flush, info, 1);

  put_flush_tlb_info();
  preempt_enable();
 }
}
