
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_object_t ;


 int JERRY_ASSERT (int) ;
 int ecma_check_value_type_is_spec_defined (int ) ;
 scalar_t__ ecma_is_value_boolean (int ) ;
 scalar_t__ ecma_is_value_null (int ) ;
 scalar_t__ ecma_is_value_number (int ) ;
 scalar_t__ ecma_is_value_object (int ) ;
 scalar_t__ ecma_is_value_prop_name (int ) ;
 scalar_t__ ecma_is_value_undefined (int ) ;
 int ecma_make_object_value (int *) ;
 int * ecma_op_create_object_object_noarg () ;
 int ecma_op_to_object (int ) ;

ecma_value_t
ecma_op_create_object_object_arg (ecma_value_t value)
{
  ecma_check_value_type_is_spec_defined (value);

  if (ecma_is_value_object (value)
      || ecma_is_value_number (value)
      || ecma_is_value_prop_name (value)
      || ecma_is_value_boolean (value))
  {

    return ecma_op_to_object (value);
  }
  else
  {

    JERRY_ASSERT (ecma_is_value_undefined (value)
                  || ecma_is_value_null (value));

    ecma_object_t *obj_p = ecma_op_create_object_object_noarg ();

    return ecma_make_object_value (obj_p);
  }
}
