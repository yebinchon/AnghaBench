
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_string_t ;
typedef int ecma_length_t ;


 int ECMA_VALUE_ERROR ;
 int JERRY_ASSERT (int) ;
 scalar_t__ JERRY_UNLIKELY (int ) ;
 int LIT_MAGIC_STRING_COMMA_CHAR ;
 int LIT_MAGIC_STRING__EMPTY ;
 int * ecma_append_magic_string_to_string (int *,int ) ;
 int * ecma_concat_ecma_strings (int *,int *) ;
 int ecma_deref_ecma_string (int *) ;
 int ecma_make_magic_string_value (int ) ;
 int ecma_make_string_value (int *) ;
 int * ecma_op_to_string (int const) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_function_helper_get_function_arguments (const ecma_value_t *arguments_list_p,
                                                     ecma_length_t arguments_list_len)
{
  JERRY_ASSERT (arguments_list_len == 0 || arguments_list_p != ((void*)0));

  if (arguments_list_len <= 1)
  {
    return ecma_make_magic_string_value (LIT_MAGIC_STRING__EMPTY);
  }

  ecma_string_t *final_str_p = ecma_op_to_string (arguments_list_p[0]);

  if (JERRY_UNLIKELY (final_str_p == ((void*)0)))
  {
    return ECMA_VALUE_ERROR;
  }

  if (arguments_list_len == 2)
  {
    return ecma_make_string_value (final_str_p);
  }

  for (ecma_length_t idx = 1; idx < arguments_list_len - 1; idx++)
  {
    ecma_string_t *new_str_p = ecma_op_to_string (arguments_list_p[idx]);

    if (JERRY_UNLIKELY (new_str_p == ((void*)0)))
    {
      ecma_deref_ecma_string (final_str_p);
      return ECMA_VALUE_ERROR;
    }

    final_str_p = ecma_append_magic_string_to_string (final_str_p,
                                                      LIT_MAGIC_STRING_COMMA_CHAR);

    final_str_p = ecma_concat_ecma_strings (final_str_p, new_str_p);
    ecma_deref_ecma_string (new_str_p);
  }

  return ecma_make_string_value (final_str_p);
}
