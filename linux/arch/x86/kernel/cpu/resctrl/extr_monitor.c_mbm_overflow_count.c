
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MBM_CNTR_WIDTH ;

__attribute__((used)) static u64 mbm_overflow_count(u64 prev_msr, u64 cur_msr)
{
 u64 shift = 64 - MBM_CNTR_WIDTH, chunks;

 chunks = (cur_msr << shift) - (prev_msr << shift);
 return chunks >>= shift;
}
