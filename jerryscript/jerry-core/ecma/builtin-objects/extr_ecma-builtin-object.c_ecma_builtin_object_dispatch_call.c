
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef scalar_t__ ecma_length_t ;


 int JERRY_ASSERT (int) ;
 int ecma_builtin_object_dispatch_construct (int const*,scalar_t__) ;
 scalar_t__ ecma_is_value_null (int const) ;
 scalar_t__ ecma_is_value_undefined (int const) ;
 int ecma_op_to_object (int const) ;

ecma_value_t
ecma_builtin_object_dispatch_call (const ecma_value_t *arguments_list_p,
                                   ecma_length_t arguments_list_len)
{
  JERRY_ASSERT (arguments_list_len == 0 || arguments_list_p != ((void*)0));

  if (arguments_list_len == 0
      || ecma_is_value_undefined (arguments_list_p[0])
      || ecma_is_value_null (arguments_list_p[0]))
  {
    return ecma_builtin_object_dispatch_construct (arguments_list_p, arguments_list_len);
  }

  return ecma_op_to_object (arguments_list_p[0]);
}
