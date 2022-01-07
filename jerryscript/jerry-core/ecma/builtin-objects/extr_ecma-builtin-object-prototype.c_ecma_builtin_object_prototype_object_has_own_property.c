
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_string_t ;
typedef int ecma_object_t ;


 int ecma_make_boolean_value (int ) ;
 int ecma_op_object_has_own_property (int *,int *) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_object_prototype_object_has_own_property (ecma_object_t *obj_p,
                                                       ecma_string_t *prop_name_p)
{
  return ecma_make_boolean_value (ecma_op_object_has_own_property (obj_p, prop_name_p));
}
