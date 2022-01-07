
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_string_t ;
typedef int ecma_standard_error_t ;
typedef int ecma_object_t ;
typedef scalar_t__ ecma_length_t ;


 int ECMA_VALUE_ERROR ;
 int JERRY_ASSERT (int) ;
 scalar_t__ JERRY_UNLIKELY (int ) ;
 int ecma_deref_ecma_string (int *) ;
 int ecma_is_value_undefined (int const) ;
 int ecma_make_object_value (int *) ;
 int * ecma_new_standard_error (int ) ;
 int * ecma_new_standard_error_with_message (int ,int *) ;
 int * ecma_op_to_string (int const) ;

ecma_value_t
ecma_builtin_helper_error_dispatch_call (ecma_standard_error_t error_type,
                                         const ecma_value_t *arguments_list_p,
                                         ecma_length_t arguments_list_len)
{
  JERRY_ASSERT (arguments_list_len == 0 || arguments_list_p != ((void*)0));

  if (arguments_list_len != 0
      && !ecma_is_value_undefined (arguments_list_p[0]))
  {
    ecma_string_t *message_string_p = ecma_op_to_string (arguments_list_p[0]);

    if (JERRY_UNLIKELY (message_string_p == ((void*)0)))
    {
      return ECMA_VALUE_ERROR;
    }

    ecma_object_t *new_error_object_p = ecma_new_standard_error_with_message (error_type,
                                                                              message_string_p);

    ecma_deref_ecma_string (message_string_p);
    return ecma_make_object_value (new_error_object_p);
  }
  else
  {
    ecma_object_t *new_error_object_p = ecma_new_standard_error (error_type);

    return ecma_make_object_value (new_error_object_p);
  }
}
