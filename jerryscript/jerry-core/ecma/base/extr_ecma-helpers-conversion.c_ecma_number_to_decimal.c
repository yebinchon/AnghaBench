
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lit_utf8_size_t ;
typedef int lit_utf8_byte_t ;
typedef int int32_t ;
typedef scalar_t__ ecma_number_t ;


 int JERRY_ASSERT (int) ;
 int ecma_errol0_dtoa (double,int *,int *) ;
 int ecma_number_is_infinity (scalar_t__) ;
 int ecma_number_is_nan (scalar_t__) ;
 int ecma_number_is_negative (scalar_t__) ;
 int ecma_number_is_zero (scalar_t__) ;

lit_utf8_size_t
ecma_number_to_decimal (ecma_number_t num,
                        lit_utf8_byte_t *out_digits_p,
                        int32_t *out_decimal_exp_p)
{
  JERRY_ASSERT (!ecma_number_is_nan (num));
  JERRY_ASSERT (!ecma_number_is_zero (num));
  JERRY_ASSERT (!ecma_number_is_infinity (num));
  JERRY_ASSERT (!ecma_number_is_negative (num));

  return ecma_errol0_dtoa ((double) num, out_digits_p, out_decimal_exp_p);
}
