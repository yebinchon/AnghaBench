
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_object_t ;


 int ECMA_ERR_MSG (char*) ;
 scalar_t__ ECMA_IS_VALUE_ERROR (int ) ;
 int LIT_MAGIC_STRING_TO_STRING_UL ;
 int ecma_deref_object (int *) ;
 int ecma_free_value (int ) ;
 int * ecma_get_object_from_value (int ) ;
 int ecma_make_object_value (int *) ;
 int ecma_op_function_call (int *,int ,int *,int ) ;
 int ecma_op_is_callable (int ) ;
 int ecma_op_object_get_by_magic_id (int *,int ) ;
 int ecma_raise_type_error (int ) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_object_prototype_object_to_locale_string (ecma_object_t *obj_p)
{

  ecma_value_t to_string_val = ecma_op_object_get_by_magic_id (obj_p, LIT_MAGIC_STRING_TO_STRING_UL);

  if (ECMA_IS_VALUE_ERROR (to_string_val))
  {
    return to_string_val;
  }


  if (!ecma_op_is_callable (to_string_val))
  {
    ecma_free_value (to_string_val);
    return ecma_raise_type_error (ECMA_ERR_MSG ("'toString is missing or not a function.'"));
  }


  ecma_object_t *to_string_func_obj_p = ecma_get_object_from_value (to_string_val);
  ecma_value_t ret_value = ecma_op_function_call (to_string_func_obj_p, ecma_make_object_value (obj_p), ((void*)0), 0);

  ecma_deref_object (to_string_func_obj_p);

  return ret_value;
}
