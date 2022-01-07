
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {int sigh; } ;
typedef TYPE_1__ FPU_REG ;


 TYPE_1__ CONST_QNaN ;
 int CW_Invalid ;
 int EXCEPTION (int) ;
 int EXP_OVER ;
 int EX_INTERNAL ;
 int EX_Invalid ;
 int FPU_copy_to_reg0 (TYPE_1__*,int ) ;
 int TAG_Special ;

 int control_word ;
 int exponent (TYPE_1__*) ;
 int push () ;

__attribute__((used)) static void single_arg_2_error(FPU_REG *st0_ptr, u_char st0_tag)
{
 int isNaN;

 switch (st0_tag) {
 case 128:
  isNaN = (exponent(st0_ptr) == EXP_OVER)
      && (st0_ptr->sigh & 0x80000000);
  if (isNaN && !(st0_ptr->sigh & 0x40000000)) {
   EXCEPTION(EX_Invalid);
   if (control_word & CW_Invalid) {


    st0_ptr->sigh |= 0x40000000;
    push();
    FPU_copy_to_reg0(st0_ptr, TAG_Special);
   }
  } else if (isNaN) {

   push();
   FPU_copy_to_reg0(st0_ptr, TAG_Special);
  } else {

   EXCEPTION(EX_Invalid);
   if (control_word & CW_Invalid) {

    FPU_copy_to_reg0(&CONST_QNaN, TAG_Special);
    push();
    FPU_copy_to_reg0(&CONST_QNaN, TAG_Special);
   }
  }
  break;




 }
}
