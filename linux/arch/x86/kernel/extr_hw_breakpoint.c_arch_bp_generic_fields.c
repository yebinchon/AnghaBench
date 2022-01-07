
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int HW_BREAKPOINT_R ;
 int HW_BREAKPOINT_W ;
 int HW_BREAKPOINT_X ;

 int X86_BREAKPOINT_LEN_X ;


 int arch_bp_generic_len (int) ;

int arch_bp_generic_fields(int x86_len, int x86_type,
      int *gen_len, int *gen_type)
{
 int len;


 switch (x86_type) {
 case 130:
  if (x86_len != X86_BREAKPOINT_LEN_X)
   return -EINVAL;

  *gen_type = HW_BREAKPOINT_X;
  *gen_len = sizeof(long);
  return 0;
 case 128:
  *gen_type = HW_BREAKPOINT_W;
  break;
 case 129:
  *gen_type = HW_BREAKPOINT_W | HW_BREAKPOINT_R;
  break;
 default:
  return -EINVAL;
 }


 len = arch_bp_generic_len(x86_len);
 if (len < 0)
  return -EINVAL;
 *gen_len = len;

 return 0;
}
