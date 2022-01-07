
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CW_Denormal ;
 int EXCEPTION (int ) ;
 int EX_Denormal ;
 int FPU_Exception ;
 int SW_Denorm_Op ;
 int TAG_Special ;
 int control_word ;
 int partial_status ;

int denormal_operand(void)
{
 if (control_word & CW_Denormal) {
  partial_status |= SW_Denorm_Op;
  return TAG_Special;
 } else {
  EXCEPTION(EX_Denormal);
  return TAG_Special | FPU_Exception;
 }
}
