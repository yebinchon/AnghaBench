
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union perf_mem_data_src {int val; } ;
typedef int u64 ;
typedef int u32 ;
struct pt_regs {int dummy; } ;


 int ISA207_SIER_DATA_SRC_MASK ;
 int ISA207_SIER_DATA_SRC_SHIFT ;
 int ISA207_SIER_LDST_MASK ;
 int ISA207_SIER_LDST_SHIFT ;
 int ISA207_SIER_TYPE_MASK ;
 int ISA207_SIER_TYPE_SHIFT ;
 int LOAD ;
 int OP ;
 int P (int ,int ) ;
 int PPMU_HAS_SIER ;
 int SPRN_SIER ;
 int STORE ;
 int isa207_find_source (int,int) ;
 int mfspr (int ) ;

void isa207_get_mem_data_src(union perf_mem_data_src *dsrc, u32 flags,
       struct pt_regs *regs)
{
 u64 idx;
 u32 sub_idx;
 u64 sier;
 u64 val;


 if (!(flags & PPMU_HAS_SIER)) {
  dsrc->val = 0;
  return;
 }

 sier = mfspr(SPRN_SIER);
 val = (sier & ISA207_SIER_TYPE_MASK) >> ISA207_SIER_TYPE_SHIFT;
 if (val == 1 || val == 2) {
  idx = (sier & ISA207_SIER_LDST_MASK) >> ISA207_SIER_LDST_SHIFT;
  sub_idx = (sier & ISA207_SIER_DATA_SRC_MASK) >> ISA207_SIER_DATA_SRC_SHIFT;

  dsrc->val = isa207_find_source(idx, sub_idx);
  dsrc->val |= (val == 1) ? P(OP, LOAD) : P(OP, STORE);
 }
}
