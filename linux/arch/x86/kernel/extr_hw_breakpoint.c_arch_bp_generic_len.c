
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int HW_BREAKPOINT_LEN_1 ;
 int HW_BREAKPOINT_LEN_2 ;
 int HW_BREAKPOINT_LEN_4 ;
 int HW_BREAKPOINT_LEN_8 ;





__attribute__((used)) static int arch_bp_generic_len(int x86_len)
{
 switch (x86_len) {
 case 131:
  return HW_BREAKPOINT_LEN_1;
 case 130:
  return HW_BREAKPOINT_LEN_2;
 case 129:
  return HW_BREAKPOINT_LEN_4;




 default:
  return -EINVAL;
 }
}
