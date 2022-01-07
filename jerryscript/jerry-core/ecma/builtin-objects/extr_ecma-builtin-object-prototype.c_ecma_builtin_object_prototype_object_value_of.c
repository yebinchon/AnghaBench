
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;


 int ecma_op_to_object (int ) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_object_prototype_object_value_of (ecma_value_t this_arg)
{
  return ecma_op_to_object (this_arg);
}
