
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;


 int LIT_MAGIC_STRING__FUNCTION_TO_STRING ;
 int ecma_make_magic_string_value (int ) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_function_prototype_object_to_string (void)
{
  return ecma_make_magic_string_value (LIT_MAGIC_STRING__FUNCTION_TO_STRING);
}
