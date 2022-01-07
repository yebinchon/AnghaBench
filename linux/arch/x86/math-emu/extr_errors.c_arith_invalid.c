
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONST_QNaN ;
 int CW_Invalid ;
 int EXCEPTION (int ) ;
 int EX_Invalid ;
 int FPU_Exception ;
 int FPU_copy_to_regi (int *,int ,int) ;
 int TAG_Special ;
 int TAG_Valid ;
 int control_word ;

int arith_invalid(int deststnr)
{

 EXCEPTION(EX_Invalid);

 if (control_word & CW_Invalid) {

  FPU_copy_to_regi(&CONST_QNaN, TAG_Special, deststnr);
 }

 return (!(control_word & CW_Invalid) ? FPU_Exception : 0) | TAG_Valid;

}
