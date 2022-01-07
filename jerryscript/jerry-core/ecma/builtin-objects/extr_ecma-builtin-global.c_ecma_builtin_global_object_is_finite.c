
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_number_t ;


 int ecma_make_boolean_value (int) ;
 scalar_t__ ecma_number_is_infinity (int ) ;
 scalar_t__ ecma_number_is_nan (int ) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_global_object_is_finite (ecma_number_t arg_num)
{
  bool is_finite = !(ecma_number_is_nan (arg_num)
                     || ecma_number_is_infinity (arg_num));

  return ecma_make_boolean_value (is_finite);
}
