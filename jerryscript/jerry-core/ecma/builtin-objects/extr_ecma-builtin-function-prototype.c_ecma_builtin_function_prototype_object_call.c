
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_object_t ;
typedef unsigned int ecma_length_t ;


 int const ECMA_VALUE_UNDEFINED ;
 int ecma_op_function_call (int *,int const,int const*,unsigned int) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_function_prototype_object_call (ecma_object_t *func_obj_p ,
                                             const ecma_value_t *arguments_list_p,
                                             ecma_length_t arguments_number)
{
  if (arguments_number == 0)
  {

    return ecma_op_function_call (func_obj_p,
                                  ECMA_VALUE_UNDEFINED,
                                  ((void*)0),
                                  0);
  }

  return ecma_op_function_call (func_obj_p,
                                arguments_list_p[0],
                                arguments_list_p + 1,
                                (ecma_length_t) (arguments_number - 1u));
}
