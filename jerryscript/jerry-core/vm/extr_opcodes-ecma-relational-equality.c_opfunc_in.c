
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_string_t ;
typedef int ecma_object_t ;


 int ECMA_ERR_MSG (char*) ;
 int ECMA_VALUE_ERROR ;
 scalar_t__ JERRY_UNLIKELY (int ) ;
 int ecma_deref_ecma_string (int *) ;
 int * ecma_get_object_from_value (int ) ;
 int ecma_is_value_object (int ) ;
 int ecma_make_boolean_value (int ) ;
 int ecma_op_object_has_property (int *,int *) ;
 int * ecma_op_to_prop_name (int ) ;
 int ecma_raise_type_error (int ) ;

ecma_value_t
opfunc_in (ecma_value_t left_value,
           ecma_value_t right_value)
{
  if (!ecma_is_value_object (right_value))
  {
    return ecma_raise_type_error (ECMA_ERR_MSG ("Expected an object in 'in' check."));
  }

  ecma_string_t *property_name_p = ecma_op_to_prop_name (left_value);

  if (JERRY_UNLIKELY (property_name_p == ((void*)0)))
  {
    return ECMA_VALUE_ERROR;
  }

  ecma_object_t *right_value_obj_p = ecma_get_object_from_value (right_value);
  ecma_value_t result = ecma_make_boolean_value (ecma_op_object_has_property (right_value_obj_p,
                                                                              property_name_p));
  ecma_deref_ecma_string (property_name_p);
  return result;
}
