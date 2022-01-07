
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPRN_TLB1CFG ;
 int TLBnCFG_N_ENTRY ;
 int __this_cpu_inc (int ) ;
 int __this_cpu_write (int ,int ) ;
 int mfspr (int ) ;
 int next_tlbcam_idx ;
 int this_cpu_read (int ) ;
 int tlbcam_index ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int tlb1_next(void)
{
 int index, ncams;

 ncams = mfspr(SPRN_TLB1CFG) & TLBnCFG_N_ENTRY;

 index = this_cpu_read(next_tlbcam_idx);


 if (unlikely(index == ncams - 1))
  __this_cpu_write(next_tlbcam_idx, tlbcam_index);
 else
  __this_cpu_inc(next_tlbcam_idx);

 return index;
}
