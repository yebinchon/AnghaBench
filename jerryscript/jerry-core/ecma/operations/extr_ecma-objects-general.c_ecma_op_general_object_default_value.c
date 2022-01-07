
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lit_magic_string_id_t ;
typedef int ecma_value_t ;
typedef scalar_t__ ecma_preferred_type_hint_t ;
typedef int ecma_object_t ;


 int ECMA_ERR_MSG (char*) ;
 scalar_t__ ECMA_IS_VALUE_ERROR (int ) ;
 scalar_t__ ECMA_PREFERRED_TYPE_NO ;
 scalar_t__ ECMA_PREFERRED_TYPE_NUMBER ;
 scalar_t__ ECMA_PREFERRED_TYPE_STRING ;
 int ECMA_VALUE_EMPTY ;
 int JERRY_ASSERT (int) ;
 int LIT_MAGIC_STRING_DATE_UL ;
 int LIT_MAGIC_STRING_TO_STRING_UL ;
 int LIT_MAGIC_STRING_VALUE_OF_UL ;
 int ecma_free_value (int ) ;
 int * ecma_get_object_from_value (int ) ;
 int ecma_is_lexical_environment (int *) ;
 int ecma_is_value_empty (int ) ;
 int ecma_is_value_object (int ) ;
 int ecma_make_object_value (int *) ;
 scalar_t__ ecma_object_class_is (int *,int ) ;
 int ecma_op_function_call (int *,int ,int *,int ) ;
 scalar_t__ ecma_op_is_callable (int ) ;
 int ecma_op_object_get_by_magic_id (int *,int ) ;
 int ecma_raise_type_error (int ) ;

ecma_value_t
ecma_op_general_object_default_value (ecma_object_t *obj_p,
                                      ecma_preferred_type_hint_t hint)
{
  JERRY_ASSERT (obj_p != ((void*)0)
                && !ecma_is_lexical_environment (obj_p));

  if (hint == ECMA_PREFERRED_TYPE_NO)
  {
    if (ecma_object_class_is (obj_p, LIT_MAGIC_STRING_DATE_UL))
    {
      hint = ECMA_PREFERRED_TYPE_STRING;
    }
    else
    {
      hint = ECMA_PREFERRED_TYPE_NUMBER;
    }
  }

  for (uint32_t i = 1; i <= 2; i++)
  {
    lit_magic_string_id_t function_name_id;

    if ((i == 1 && hint == ECMA_PREFERRED_TYPE_STRING)
        || (i == 2 && hint == ECMA_PREFERRED_TYPE_NUMBER))
    {
      function_name_id = LIT_MAGIC_STRING_TO_STRING_UL;
    }
    else
    {
      function_name_id = LIT_MAGIC_STRING_VALUE_OF_UL;
    }

    ecma_value_t function_value = ecma_op_object_get_by_magic_id (obj_p, function_name_id);

    if (ECMA_IS_VALUE_ERROR (function_value))
    {
      return function_value;
    }

    ecma_value_t call_completion = ECMA_VALUE_EMPTY;

    if (ecma_op_is_callable (function_value))
    {
      ecma_object_t *func_obj_p = ecma_get_object_from_value (function_value);

      call_completion = ecma_op_function_call (func_obj_p,
                                               ecma_make_object_value (obj_p),
                                               ((void*)0),
                                               0);
    }

    ecma_free_value (function_value);

    if (ECMA_IS_VALUE_ERROR (call_completion)
        || (!ecma_is_value_empty (call_completion)
           && !ecma_is_value_object (call_completion)))
    {
      return call_completion;
    }

    ecma_free_value (call_completion);
  }

  return ecma_raise_type_error (ECMA_ERR_MSG ("Invalid argument type in [[DefaultValue]]."));
}
