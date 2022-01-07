
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ecma_value_t ;
typedef int ecma_string_t ;
typedef int ecma_number_t ;


 scalar_t__ ECMA_ASSERT_VALUE_IS_SYMBOL (scalar_t__) ;
 int JERRY_ASSERT (int) ;
 int ecma_check_value_type_is_spec_defined (scalar_t__) ;
 int ecma_get_float_from_value (scalar_t__) ;
 int * ecma_get_string_from_value (scalar_t__) ;
 scalar_t__ ecma_is_value_boolean (scalar_t__) ;
 scalar_t__ ecma_is_value_float_number (scalar_t__) ;
 scalar_t__ ecma_is_value_integer_number (scalar_t__) ;
 scalar_t__ ecma_is_value_null (scalar_t__) ;
 scalar_t__ ecma_is_value_object (scalar_t__) ;
 scalar_t__ ecma_is_value_simple (scalar_t__) ;
 scalar_t__ ecma_is_value_string (scalar_t__) ;
 int ecma_is_value_true (scalar_t__) ;
 scalar_t__ ecma_is_value_undefined (scalar_t__) ;
 scalar_t__ ecma_make_integer_value (int ) ;
 int ecma_number_is_nan (int ) ;
 int ecma_number_is_zero (int ) ;
 int ecma_string_is_empty (int *) ;

bool
ecma_op_to_boolean (ecma_value_t value)
{
  ecma_check_value_type_is_spec_defined (value);

  if (ecma_is_value_simple (value))
  {
    JERRY_ASSERT (ecma_is_value_boolean (value)
                  || ecma_is_value_undefined (value)
                  || ecma_is_value_null (value));

    return ecma_is_value_true (value);
  }

  if (ecma_is_value_integer_number (value))
  {
    return (value != ecma_make_integer_value (0));
  }

  if (ecma_is_value_float_number (value))
  {
    ecma_number_t num = ecma_get_float_from_value (value);

    return (!ecma_number_is_nan (num) && !ecma_number_is_zero (num));
  }

  if (ecma_is_value_string (value))
  {
    ecma_string_t *str_p = ecma_get_string_from_value (value);

    return !ecma_string_is_empty (str_p);
  }

  JERRY_ASSERT (ecma_is_value_object (value) || ECMA_ASSERT_VALUE_IS_SYMBOL (value));

  return 1;
}
