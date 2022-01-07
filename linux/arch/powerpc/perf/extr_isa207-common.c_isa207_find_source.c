
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int HIT ;
 int HITM ;
 int L1 ;
 int L2 ;
 int L3 ;
 int LOC_RAM ;
 int LVL ;
 int P (int ,int ) ;
 int PERF_MEM_NA ;
 int PH (int ,int ) ;
 int PM (int ,int ) ;
 int REM_CCE1 ;
 int REM_CCE2 ;
 int REM_RAM1 ;
 int REM_RAM2 ;
 int SNOOP ;

__attribute__((used)) static inline u64 isa207_find_source(u64 idx, u32 sub_idx)
{
 u64 ret = PERF_MEM_NA;

 switch(idx) {
 case 0:

  break;
 case 1:
  ret = PH(LVL, L1);
  break;
 case 2:
  ret = PH(LVL, L2);
  break;
 case 3:
  ret = PH(LVL, L3);
  break;
 case 4:
  if (sub_idx <= 1)
   ret = PH(LVL, LOC_RAM);
  else if (sub_idx > 1 && sub_idx <= 2)
   ret = PH(LVL, REM_RAM1);
  else
   ret = PH(LVL, REM_RAM2);
  ret |= P(SNOOP, HIT);
  break;
 case 5:
  ret = PH(LVL, REM_CCE1);
  if ((sub_idx == 0) || (sub_idx == 2) || (sub_idx == 4))
   ret |= P(SNOOP, HIT);
  else if ((sub_idx == 1) || (sub_idx == 3) || (sub_idx == 5))
   ret |= P(SNOOP, HITM);
  break;
 case 6:
  ret = PH(LVL, REM_CCE2);
  if ((sub_idx == 0) || (sub_idx == 2))
   ret |= P(SNOOP, HIT);
  else if ((sub_idx == 1) || (sub_idx == 3))
   ret |= P(SNOOP, HITM);
  break;
 case 7:
  ret = PM(LVL, L1);
  break;
 }

 return ret;
}
