
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
typedef int FPU_REG ;


 int EXCEPTION (int) ;
 int EX_INTERNAL ;
 int FPU_stack_underflow () ;
 scalar_t__ TAG_Empty ;
 scalar_t__ TW_NaN ;
 int real_1op_NaN (int *) ;

__attribute__((used)) static void single_arg_error(FPU_REG *st0_ptr, u_char st0_tag)
{
 if (st0_tag == TAG_Empty)
  FPU_stack_underflow();
 else if (st0_tag == TW_NaN)
  real_1op_NaN(st0_ptr);




}
