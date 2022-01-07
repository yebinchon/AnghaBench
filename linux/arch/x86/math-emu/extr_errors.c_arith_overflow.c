
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FPU_REG ;


 int CONST_INF ;
 int CW_Overflow ;
 int EXCEPTION (int) ;
 int EX_Overflow ;
 int EX_Precision ;
 int SW_C1 ;
 int TAG_Special ;
 int TAG_Valid ;
 int addexponent (int *,int) ;
 int control_word ;
 int reg_copy (int *,int *) ;

int arith_overflow(FPU_REG *dest)
{
 int tag = TAG_Valid;

 if (control_word & CW_Overflow) {


  reg_copy(&CONST_INF, dest);
  tag = TAG_Special;
 } else {

  addexponent(dest, (-3 * (1 << 13)));
 }

 EXCEPTION(EX_Overflow);
 if (control_word & CW_Overflow) {




  EXCEPTION(EX_Precision | SW_C1);
  return tag;
 }

 return tag;

}
