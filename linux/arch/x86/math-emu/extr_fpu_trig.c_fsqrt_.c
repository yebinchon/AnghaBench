
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
typedef int FPU_REG ;


 scalar_t__ FPU_Special (int *) ;
 int FPU_settag0 (scalar_t__) ;
 int FPU_to_exp16 (int *,int *) ;
 int SIGN_POS ;
 scalar_t__ TAG_Special ;
 scalar_t__ TAG_Valid ;
 scalar_t__ TAG_Zero ;
 scalar_t__ TW_Denormal ;
 scalar_t__ TW_Infinity ;
 int addexponent (int *,int) ;
 int arith_invalid (int ) ;
 int clear_C1 () ;
 int control_word ;
 scalar_t__ denormal_operand () ;
 int exponent (int *) ;
 int exponent16 (int *) ;
 int setexponent16 (int *,int) ;
 scalar_t__ signnegative (int *) ;
 int single_arg_error (int *,scalar_t__) ;
 scalar_t__ wm_sqrt (int *,int ,int ,int ,int ) ;

__attribute__((used)) static void fsqrt_(FPU_REG *st0_ptr, u_char st0_tag)
{
 int expon;

 clear_C1();

 if (st0_tag == TAG_Valid) {
  u_char tag;

  if (signnegative(st0_ptr)) {
   arith_invalid(0);
   return;
  }


  expon = exponent(st0_ptr);

       denormal_arg:

  setexponent16(st0_ptr, (expon & 1));


  tag = wm_sqrt(st0_ptr, 0, 0, control_word, SIGN_POS);
  addexponent(st0_ptr, expon >> 1);
  FPU_settag0(tag);
  return;
 }

 if (st0_tag == TAG_Zero)
  return;

 if (st0_tag == TAG_Special)
  st0_tag = FPU_Special(st0_ptr);

 if (st0_tag == TW_Infinity) {
  if (signnegative(st0_ptr))
   arith_invalid(0);
  return;
 } else if (st0_tag == TW_Denormal) {
  if (signnegative(st0_ptr)) {
   arith_invalid(0);
   return;
  }

  if (denormal_operand() < 0)
   return;

  FPU_to_exp16(st0_ptr, st0_ptr);

  expon = exponent16(st0_ptr);

  goto denormal_arg;
 }

 single_arg_error(st0_ptr, st0_tag);

}
