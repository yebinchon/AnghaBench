
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int HW_BREAKPOINT_LEN_1 ;
 int HW_BREAKPOINT_LEN_2 ;
 int HW_BREAKPOINT_LEN_4 ;
 int HW_BREAKPOINT_LEN_8 ;
 int HW_BREAKPOINT_R ;
 int HW_BREAKPOINT_W ;
int arch_bp_generic_fields(int sh_len, int sh_type,
      int *gen_len, int *gen_type)
{

 switch (sh_len) {
 case 134:
  *gen_len = HW_BREAKPOINT_LEN_1;
  break;
 case 133:
  *gen_len = HW_BREAKPOINT_LEN_2;
  break;
 case 132:
  *gen_len = HW_BREAKPOINT_LEN_4;
  break;
 case 131:
  *gen_len = HW_BREAKPOINT_LEN_8;
  break;
 default:
  return -EINVAL;
 }


 switch (sh_type) {
 case 130:
  *gen_type = HW_BREAKPOINT_R;
  break;
 case 128:
  *gen_type = HW_BREAKPOINT_W;
  break;
 case 129:
  *gen_type = HW_BREAKPOINT_W | HW_BREAKPOINT_R;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
