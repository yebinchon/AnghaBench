
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_string_t ;
typedef scalar_t__ ecma_property_t ;
typedef int ecma_object_t ;


 int ECMA_PROPERTY_GET_NO_OPTIONS ;
 scalar_t__ ECMA_PROPERTY_TYPE_NOT_FOUND ;
 scalar_t__ ECMA_PROPERTY_TYPE_NOT_FOUND_AND_STOP ;
 int ECMA_VALUE_FALSE ;
 int ecma_is_property_enumerable (scalar_t__) ;
 int ecma_make_boolean_value (int ) ;
 scalar_t__ ecma_op_object_get_own_property (int *,int *,int *,int ) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_object_prototype_object_property_is_enumerable (ecma_object_t *obj_p,
                                                             ecma_string_t *prop_name_p)
{

  ecma_property_t property = ecma_op_object_get_own_property (obj_p,
                                                              prop_name_p,
                                                              ((void*)0),
                                                              ECMA_PROPERTY_GET_NO_OPTIONS);


  if (property != ECMA_PROPERTY_TYPE_NOT_FOUND && property != ECMA_PROPERTY_TYPE_NOT_FOUND_AND_STOP)
  {
    return ecma_make_boolean_value (ecma_is_property_enumerable (property));
  }

  return ECMA_VALUE_FALSE;
}
