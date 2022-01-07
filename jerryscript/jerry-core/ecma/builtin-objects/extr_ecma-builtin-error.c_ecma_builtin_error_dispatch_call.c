
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_length_t ;


 int ECMA_ERROR_COMMON ;
 int ecma_builtin_helper_error_dispatch_call (int ,int const*,int ) ;

ecma_value_t
ecma_builtin_error_dispatch_call (const ecma_value_t *arguments_list_p,
                                  ecma_length_t arguments_list_len)
{
  return ecma_builtin_helper_error_dispatch_call (ECMA_ERROR_COMMON, arguments_list_p, arguments_list_len);
}
