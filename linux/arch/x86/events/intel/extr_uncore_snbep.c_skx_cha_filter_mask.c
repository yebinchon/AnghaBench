
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SKX_CHA_MSR_PMON_BOX_FILTER_ALL_OPC ;
 int SKX_CHA_MSR_PMON_BOX_FILTER_ISOC ;
 int SKX_CHA_MSR_PMON_BOX_FILTER_LINK ;
 int SKX_CHA_MSR_PMON_BOX_FILTER_LOC ;
 int SKX_CHA_MSR_PMON_BOX_FILTER_NC ;
 int SKX_CHA_MSR_PMON_BOX_FILTER_NM ;
 int SKX_CHA_MSR_PMON_BOX_FILTER_NOT_NM ;
 int SKX_CHA_MSR_PMON_BOX_FILTER_OPC0 ;
 int SKX_CHA_MSR_PMON_BOX_FILTER_OPC1 ;
 int SKX_CHA_MSR_PMON_BOX_FILTER_REM ;
 int SKX_CHA_MSR_PMON_BOX_FILTER_STATE ;
 int SKX_CHA_MSR_PMON_BOX_FILTER_TID ;

__attribute__((used)) static u64 skx_cha_filter_mask(int fields)
{
 u64 mask = 0;

 if (fields & 0x1)
  mask |= SKX_CHA_MSR_PMON_BOX_FILTER_TID;
 if (fields & 0x2)
  mask |= SKX_CHA_MSR_PMON_BOX_FILTER_LINK;
 if (fields & 0x4)
  mask |= SKX_CHA_MSR_PMON_BOX_FILTER_STATE;
 if (fields & 0x8) {
  mask |= SKX_CHA_MSR_PMON_BOX_FILTER_REM;
  mask |= SKX_CHA_MSR_PMON_BOX_FILTER_LOC;
  mask |= SKX_CHA_MSR_PMON_BOX_FILTER_ALL_OPC;
  mask |= SKX_CHA_MSR_PMON_BOX_FILTER_NM;
  mask |= SKX_CHA_MSR_PMON_BOX_FILTER_NOT_NM;
  mask |= SKX_CHA_MSR_PMON_BOX_FILTER_OPC0;
  mask |= SKX_CHA_MSR_PMON_BOX_FILTER_OPC1;
  mask |= SKX_CHA_MSR_PMON_BOX_FILTER_NC;
  mask |= SKX_CHA_MSR_PMON_BOX_FILTER_ISOC;
 }
 return mask;
}
