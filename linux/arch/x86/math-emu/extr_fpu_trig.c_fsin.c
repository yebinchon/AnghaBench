
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
typedef int FPU_REG ;


 scalar_t__ FPU_Special (int *) ;
 scalar_t__ FPU_round (int *,int,int ,int ,scalar_t__) ;
 int FPU_settag0 (scalar_t__) ;
 int FPU_to_exp16 (int *,int *) ;
 int FULL_PRECISION ;
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
 int poly_sine (int *) ;
 int set_precision_flag_up () ;
 int setcc (int ) ;
 int setsign (int *,scalar_t__) ;
 int single_arg_error (int *,scalar_t__) ;
 int trig_arg (int *,int ) ;

__attribute__((used)) static int fsin(FPU_REG *st0_ptr, u_char tag)
{
 u_char arg_sign = getsign(st0_ptr);

 if (tag == TAG_Valid) {
  int q;

  if (exponent(st0_ptr) > -40) {
   if ((q = trig_arg(st0_ptr, 0)) == -1) {

    return 1;
   }

   poly_sine(st0_ptr);

   if (q & 2)
    changesign(st0_ptr);

   setsign(st0_ptr, getsign(st0_ptr) ^ arg_sign);


   set_precision_flag_up();
   return 0;
  } else {

   set_precision_flag_up();
   return 0;
  }
 }

 if (tag == TAG_Zero) {
  setcc(0);
  return 0;
 }

 if (tag == TAG_Special)
  tag = FPU_Special(st0_ptr);

 if (tag == TW_Denormal) {
  if (denormal_operand() < 0)
   return 1;



  FPU_to_exp16(st0_ptr, st0_ptr);

  tag = FPU_round(st0_ptr, 1, 0, FULL_PRECISION, arg_sign);

  FPU_settag0(tag);

  return 0;
 } else if (tag == TW_Infinity) {

  arith_invalid(0);
  return 1;
 } else {
  single_arg_error(st0_ptr, tag);
  return 1;
 }
}
