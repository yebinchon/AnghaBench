
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
typedef int FPU_REG ;


 int CONST_1 ;
 int FCOS ;
 scalar_t__ FPU_Special (int *) ;
 int FPU_copy_to_reg0 (int *,scalar_t__) ;
 scalar_t__ TAG_Special ;
 scalar_t__ TAG_Valid ;
 scalar_t__ TAG_Zero ;
 scalar_t__ TW_Denormal ;
 scalar_t__ TW_Infinity ;
 int arith_invalid (int ) ;
 int changesign (int *) ;
 scalar_t__ denormal_operand () ;
 int exponent (int *) ;
 scalar_t__ getsign (int *) ;
 int poly_cos (int *) ;
 int poly_sine (int *) ;
 int set_precision_flag_down () ;
 int set_precision_flag_up () ;
 int setcc (int ) ;
 int significand (int *) ;
 int single_arg_error (int *,scalar_t__) ;
 int trig_arg (int *,int ) ;

__attribute__((used)) static int f_cos(FPU_REG *st0_ptr, u_char tag)
{
 u_char st0_sign;

 st0_sign = getsign(st0_ptr);

 if (tag == TAG_Valid) {
  int q;

  if (exponent(st0_ptr) > -40) {
   if ((exponent(st0_ptr) < 0)
       || ((exponent(st0_ptr) == 0)
    && (significand(st0_ptr) <=
        0xc90fdaa22168c234LL))) {
    poly_cos(st0_ptr);


    set_precision_flag_down();

    return 0;
   } else if ((q = trig_arg(st0_ptr, FCOS)) != -1) {
    poly_sine(st0_ptr);

    if ((q + 1) & 2)
     changesign(st0_ptr);


    set_precision_flag_down();

    return 0;
   } else {

    return 1;
   }
  } else {
        denormal_arg:

   setcc(0);
   FPU_copy_to_reg0(&CONST_1, TAG_Valid);



   set_precision_flag_up();

   return 0;
  }
 } else if (tag == TAG_Zero) {
  FPU_copy_to_reg0(&CONST_1, TAG_Valid);
  setcc(0);
  return 0;
 }

 if (tag == TAG_Special)
  tag = FPU_Special(st0_ptr);

 if (tag == TW_Denormal) {
  if (denormal_operand() < 0)
   return 1;

  goto denormal_arg;
 } else if (tag == TW_Infinity) {

  arith_invalid(0);
  return 1;
 } else {
  single_arg_error(st0_ptr, tag);
  return 1;
 }
}
