
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sigh; } ;
typedef TYPE_1__ FPU_REG ;


 int CONST_QNaN ;
 int CW_Invalid ;
 int EXCEPTION (int ) ;
 scalar_t__ EXP_OVER ;
 int EX_Invalid ;
 int FPU_Exception ;
 int TAG_Special ;
 int control_word ;
 scalar_t__ exponent (TYPE_1__*) ;
 int reg_copy (int *,TYPE_1__*) ;

int real_1op_NaN(FPU_REG *a)
{
 int signalling, isNaN;

 isNaN = (exponent(a) == EXP_OVER) && (a->sigh & 0x80000000);



 signalling = isNaN && !(a->sigh & 0x40000000);

 if (!signalling) {
  if (!isNaN) {
   if (control_word & CW_Invalid) {

    reg_copy(&CONST_QNaN, a);
   }
   EXCEPTION(EX_Invalid);
   return (!(control_word & CW_Invalid) ? FPU_Exception :
    0) | TAG_Special;
  }
  return TAG_Special;
 }

 if (control_word & CW_Invalid) {

  if (!(a->sigh & 0x80000000)) {
   reg_copy(&CONST_QNaN, a);
  }

  a->sigh |= 0x40000000;
 }

 EXCEPTION(EX_Invalid);

 return (!(control_word & CW_Invalid) ? FPU_Exception : 0) | TAG_Special;
}
