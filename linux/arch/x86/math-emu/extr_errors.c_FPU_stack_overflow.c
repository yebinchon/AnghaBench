
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONST_QNaN ;
 int CW_Invalid ;
 int EXCEPTION (int ) ;
 int EX_StackOver ;
 int FPU_copy_to_reg0 (int *,int ) ;
 int TAG_Special ;
 int control_word ;
 int top ;

void FPU_stack_overflow(void)
{

 if (control_word & CW_Invalid) {

  top--;
  FPU_copy_to_reg0(&CONST_QNaN, TAG_Special);
 }

 EXCEPTION(EX_StackOver);

 return;

}
