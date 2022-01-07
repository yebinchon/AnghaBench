
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_number_t ;


 int ecma_number_calc_remainder (int ,int ) ;
 scalar_t__ ecma_number_is_infinity (int ) ;
 scalar_t__ ecma_number_is_nan (int ) ;
 scalar_t__ ecma_number_is_zero (int ) ;
 int ecma_number_make_nan () ;

ecma_number_t
ecma_op_number_remainder (ecma_number_t left_num,
                          ecma_number_t right_num)
{
  if (ecma_number_is_nan (left_num)
      || ecma_number_is_nan (right_num)
      || ecma_number_is_infinity (left_num)
      || ecma_number_is_zero (right_num))
  {
    return ecma_number_make_nan ();
  }
  else if (ecma_number_is_infinity (right_num)
           || (ecma_number_is_zero (left_num)
               && !ecma_number_is_zero (right_num)))
  {
    return left_num;
  }

  return ecma_number_calc_remainder (left_num, right_num);
}
