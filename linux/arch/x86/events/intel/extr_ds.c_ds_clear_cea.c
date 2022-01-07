
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_NONE ;
 scalar_t__ PAGE_SIZE ;
 int cea_set_pte (void*,int ,int ) ;
 int flush_tlb_kernel_range (unsigned long,unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static void ds_clear_cea(void *cea, size_t size)
{
 unsigned long start = (unsigned long)cea;
 size_t msz = 0;

 preempt_disable();
 for (; msz < size; msz += PAGE_SIZE, cea += PAGE_SIZE)
  cea_set_pte(cea, 0, PAGE_NONE);

 flush_tlb_kernel_range(start, start + size);
 preempt_enable();
}
