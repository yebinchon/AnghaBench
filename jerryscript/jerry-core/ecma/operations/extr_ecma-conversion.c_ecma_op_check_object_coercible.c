
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;


 int ECMA_ERR_MSG (char*) ;
 int ECMA_VALUE_EMPTY ;
 int ecma_check_value_type_is_spec_defined (int ) ;
 scalar_t__ ecma_is_value_null (int ) ;
 scalar_t__ ecma_is_value_undefined (int ) ;
 int ecma_raise_type_error (int ) ;

ecma_value_t
ecma_op_check_object_coercible (ecma_value_t value)
{
  ecma_check_value_type_is_spec_defined (value);

  if (ecma_is_value_undefined (value)
      || ecma_is_value_null (value))
  {
    return ecma_raise_type_error (ECMA_ERR_MSG ("Argument cannot be converted to an object."));
  }
  else
  {
    return ECMA_VALUE_EMPTY;
  }
}
