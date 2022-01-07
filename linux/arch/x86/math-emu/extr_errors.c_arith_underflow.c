
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FPU_REG ;


 int CONST_Z ;
 int CW_Underflow ;
 int EXCEPTION (int ) ;
 int EXP_UNDER ;
 scalar_t__ EXTENDED_Ebias ;
 int EX_Precision ;
 int EX_Underflow ;
 int SW_C1 ;
 int TAG_Valid ;
 int TAG_Zero ;
 int addexponent (int *,scalar_t__) ;
 int control_word ;
 int exponent16 (int *) ;
 int partial_status ;
 int reg_copy (int *,int *) ;
 int stdexp (int *) ;

int arith_underflow(FPU_REG *dest)
{
 int tag = TAG_Valid;

 if (control_word & CW_Underflow) {

  if (exponent16(dest) <= EXP_UNDER - 63) {
   reg_copy(&CONST_Z, dest);
   partial_status &= ~SW_C1;
   tag = TAG_Zero;
  } else {
   stdexp(dest);
  }
 } else {

  addexponent(dest, (3 * (1 << 13)) + EXTENDED_Ebias);
 }

 EXCEPTION(EX_Underflow);
 if (control_word & CW_Underflow) {

  EXCEPTION(EX_Precision);
  return tag;
 }

 return tag;

}
