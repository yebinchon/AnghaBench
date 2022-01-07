
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;


 scalar_t__ ECMA_IS_VALUE_ERROR (int ) ;
 int ECMA_VALUE_FALSE ;
 int JERRY_ASSERT (int) ;
 int ecma_invert_boolean_value (int ) ;
 int ecma_is_value_boolean (int ) ;
 scalar_t__ ecma_is_value_undefined (int ) ;
 int ecma_op_abstract_relational_compare (int ,int ,int) ;

ecma_value_t
opfunc_relation (ecma_value_t left_value,
                 ecma_value_t right_value,
                 bool left_first,
                 bool is_invert)
{
  JERRY_ASSERT (!ECMA_IS_VALUE_ERROR (left_value)
                && !ECMA_IS_VALUE_ERROR (right_value));

  ecma_value_t ret_value = ecma_op_abstract_relational_compare (left_value, right_value, left_first);

  if (ECMA_IS_VALUE_ERROR (ret_value))
  {
    return ret_value;
  }

  if (ecma_is_value_undefined (ret_value))
  {
    ret_value = ECMA_VALUE_FALSE;
  }
  else
  {
    JERRY_ASSERT (ecma_is_value_boolean (ret_value));

    if (is_invert)
    {
      ret_value = ecma_invert_boolean_value (ret_value);
    }
  }

  return ret_value;
}
