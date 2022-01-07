
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int KNL_CHA_MSR_PMON_BOX_FILTER_OP ;
 int KNL_CHA_MSR_PMON_BOX_FILTER_STATE ;
 int KNL_CHA_MSR_PMON_BOX_FILTER_TID ;

__attribute__((used)) static u64 knl_cha_filter_mask(int fields)
{
 u64 mask = 0;

 if (fields & 0x1)
  mask |= KNL_CHA_MSR_PMON_BOX_FILTER_TID;
 if (fields & 0x2)
  mask |= KNL_CHA_MSR_PMON_BOX_FILTER_STATE;
 if (fields & 0x4)
  mask |= KNL_CHA_MSR_PMON_BOX_FILTER_OP;
 return mask;
}
