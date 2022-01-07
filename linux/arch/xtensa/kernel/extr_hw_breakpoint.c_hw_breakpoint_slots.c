
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XCHAL_NUM_DBREAK ;
 int XCHAL_NUM_IBREAK ;
 int pr_warn (char*,int) ;

int hw_breakpoint_slots(int type)
{
 switch (type) {
 case 128:
  return XCHAL_NUM_IBREAK;
 case 129:
  return XCHAL_NUM_DBREAK;
 default:
  pr_warn("unknown slot type: %d\n", type);
  return 0;
 }
}
