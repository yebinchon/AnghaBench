
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ISA207_SIER_TYPE_MASK ;
 int ISA207_SIER_TYPE_SHIFT ;
 int MMCRA_THR_CTR_EXP (int) ;
 int MMCRA_THR_CTR_MANT (int) ;
 int SPRN_MMCRA ;
 int SPRN_SIER ;
 int mfspr (int ) ;

void isa207_get_mem_weight(u64 *weight)
{
 u64 mmcra = mfspr(SPRN_MMCRA);
 u64 exp = MMCRA_THR_CTR_EXP(mmcra);
 u64 mantissa = MMCRA_THR_CTR_MANT(mmcra);
 u64 sier = mfspr(SPRN_SIER);
 u64 val = (sier & ISA207_SIER_TYPE_MASK) >> ISA207_SIER_TYPE_SHIFT;

 if (val == 0 || val == 7)
  *weight = 0;
 else
  *weight = mantissa << (2 * exp);
}
