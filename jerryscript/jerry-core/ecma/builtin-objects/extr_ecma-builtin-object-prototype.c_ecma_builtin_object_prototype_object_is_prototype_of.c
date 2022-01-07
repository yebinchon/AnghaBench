
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_object_t ;


 scalar_t__ ECMA_IS_VALUE_ERROR (int ) ;
 int ecma_deref_object (int *) ;
 int * ecma_get_object_from_value (int ) ;
 int ecma_make_boolean_value (int ) ;
 int ecma_op_object_is_prototype_of (int *,int *) ;
 int ecma_op_to_object (int ) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_object_prototype_object_is_prototype_of (ecma_object_t *obj_p,
                                                      ecma_value_t arg)
{

  ecma_value_t v_obj_value = ecma_op_to_object (arg);

  if (ECMA_IS_VALUE_ERROR (v_obj_value))
  {
    return v_obj_value;
  }

  ecma_object_t *v_obj_p = ecma_get_object_from_value (v_obj_value);

  ecma_value_t ret_value = ecma_make_boolean_value (ecma_op_object_is_prototype_of (obj_p, v_obj_p));

  ecma_deref_object (v_obj_p);

  return ret_value;
}
