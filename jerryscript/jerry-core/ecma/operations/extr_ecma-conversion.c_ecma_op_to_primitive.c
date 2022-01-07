
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_preferred_type_hint_t ;
typedef int ecma_object_t ;


 int ecma_check_value_type_is_spec_defined (int ) ;
 int ecma_copy_value (int ) ;
 int * ecma_get_object_from_value (int ) ;
 scalar_t__ ecma_is_value_object (int ) ;
 int ecma_op_object_default_value (int *,int ) ;

ecma_value_t
ecma_op_to_primitive (ecma_value_t value,
                      ecma_preferred_type_hint_t preferred_type)
{
  ecma_check_value_type_is_spec_defined (value);

  if (ecma_is_value_object (value))
  {
    ecma_object_t *obj_p = ecma_get_object_from_value (value);

    return ecma_op_object_default_value (obj_p, preferred_type);
  }
  else
  {
    return ecma_copy_value (value);
  }
}
