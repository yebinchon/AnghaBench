
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mm_struct {int dummy; } ;
struct flush_tlb_info {unsigned long start; unsigned long end; unsigned int stride_shift; int freed_tables; int new_tlb_gen; struct mm_struct* mm; } ;


 int BUG_ON (int) ;
 int flush_tlb_info ;
 int flush_tlb_info_idx ;
 int this_cpu_inc_return (int ) ;
 struct flush_tlb_info* this_cpu_ptr (int *) ;

__attribute__((used)) static inline struct flush_tlb_info *get_flush_tlb_info(struct mm_struct *mm,
   unsigned long start, unsigned long end,
   unsigned int stride_shift, bool freed_tables,
   u64 new_tlb_gen)
{
 struct flush_tlb_info *info = this_cpu_ptr(&flush_tlb_info);
 info->start = start;
 info->end = end;
 info->mm = mm;
 info->stride_shift = stride_shift;
 info->freed_tables = freed_tables;
 info->new_tlb_gen = new_tlb_gen;

 return info;
}
