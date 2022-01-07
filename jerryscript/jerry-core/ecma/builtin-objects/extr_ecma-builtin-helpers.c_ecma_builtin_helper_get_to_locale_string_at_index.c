
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ecma_value_t ;
typedef int ecma_string_t ;
typedef int ecma_object_t ;


 int ECMA_ERR_MSG (char*) ;
 scalar_t__ ECMA_IS_VALUE_ERROR (int ) ;
 int LIT_MAGIC_STRING_TO_LOCALE_STRING_UL ;
 int LIT_MAGIC_STRING__EMPTY ;
 int ecma_deref_object (int *) ;
 int ecma_free_value (int ) ;
 int * ecma_get_magic_string (int ) ;
 int * ecma_get_object_from_value (int ) ;
 scalar_t__ ecma_is_value_null (int ) ;
 scalar_t__ ecma_is_value_undefined (int ) ;
 int ecma_op_function_call (int *,int ,int *,int ) ;
 int ecma_op_is_callable (int ) ;
 int ecma_op_object_get_by_magic_id (int *,int ) ;
 int ecma_op_object_get_by_uint32_index (int *,int ) ;
 int ecma_op_to_object (int ) ;
 int * ecma_op_to_string (int ) ;
 int ecma_raise_type_error (int ) ;

ecma_string_t *
ecma_builtin_helper_get_to_locale_string_at_index (ecma_object_t *obj_p,
                                                   uint32_t index)
{
  ecma_value_t index_value = ecma_op_object_get_by_uint32_index (obj_p, index);

  if (ECMA_IS_VALUE_ERROR (index_value))
  {
    return ((void*)0);
  }

  if (ecma_is_value_undefined (index_value) || ecma_is_value_null (index_value))
  {
    return ecma_get_magic_string (LIT_MAGIC_STRING__EMPTY);
  }

  ecma_value_t index_obj_value = ecma_op_to_object (index_value);


  if (ECMA_IS_VALUE_ERROR (index_obj_value))
  {
    ecma_free_value (index_value);
    return ((void*)0);
  }

  ecma_string_t *ret_string_p = ((void*)0);
  ecma_object_t *index_obj_p = ecma_get_object_from_value (index_obj_value);
  ecma_value_t to_locale_value = ecma_op_object_get_by_magic_id (index_obj_p, LIT_MAGIC_STRING_TO_LOCALE_STRING_UL);

  if (ECMA_IS_VALUE_ERROR (to_locale_value))
  {
    goto cleanup;
  }

  if (!ecma_op_is_callable (to_locale_value))
  {
    ecma_free_value (to_locale_value);
    ecma_raise_type_error (ECMA_ERR_MSG ("'toLocaleString' is missing or not a function."));
    goto cleanup;
  }

  ecma_object_t *locale_func_obj_p = ecma_get_object_from_value (to_locale_value);
  ecma_value_t call_value = ecma_op_function_call (locale_func_obj_p,
                                                   index_obj_value,
                                                   ((void*)0),
                                                   0);
  ecma_deref_object (locale_func_obj_p);

  if (ECMA_IS_VALUE_ERROR (call_value))
  {
    goto cleanup;
  }

  ret_string_p = ecma_op_to_string (call_value);
  ecma_free_value (call_value);

cleanup:
  ecma_deref_object (index_obj_p);
  ecma_free_value (index_value);

  return ret_string_p;
}
