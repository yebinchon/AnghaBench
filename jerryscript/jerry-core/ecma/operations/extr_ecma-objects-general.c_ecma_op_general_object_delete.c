
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ecma_value_t ;
typedef int ecma_string_t ;
typedef scalar_t__ ecma_property_t ;
struct TYPE_3__ {int value_p; } ;
typedef TYPE_1__ ecma_property_ref_t ;
typedef int ecma_object_t ;


 int ECMA_ERR_MSG (char*) ;
 scalar_t__ ECMA_OBJECT_TYPE_ARRAY ;
 int ECMA_PROPERTY_GET_NO_OPTIONS ;
 scalar_t__ ECMA_PROPERTY_TYPE_NOT_FOUND ;
 scalar_t__ ECMA_PROPERTY_TYPE_NOT_FOUND_AND_STOP ;
 int ECMA_VALUE_FALSE ;
 int ECMA_VALUE_TRUE ;
 int JERRY_ASSERT (int) ;
 int ecma_array_object_delete_property (int *,int *,int ) ;
 int ecma_delete_property (int *,int ) ;
 scalar_t__ ecma_get_object_type (int *) ;
 int ecma_is_lexical_environment (int *) ;
 scalar_t__ ecma_is_property_configurable (scalar_t__) ;
 scalar_t__ ecma_op_object_get_own_property (int *,int *,TYPE_1__*,int ) ;
 int ecma_raise_type_error (int ) ;

ecma_value_t
ecma_op_general_object_delete (ecma_object_t *obj_p,
                               ecma_string_t *property_name_p,
                               bool is_throw)
{
  JERRY_ASSERT (obj_p != ((void*)0)
                && !ecma_is_lexical_environment (obj_p));
  JERRY_ASSERT (property_name_p != ((void*)0));


  ecma_property_ref_t property_ref;

  ecma_property_t property = ecma_op_object_get_own_property (obj_p,
                                                              property_name_p,
                                                              &property_ref,
                                                              ECMA_PROPERTY_GET_NO_OPTIONS);


  if (property == ECMA_PROPERTY_TYPE_NOT_FOUND || property == ECMA_PROPERTY_TYPE_NOT_FOUND_AND_STOP)
  {
    return ECMA_VALUE_TRUE;
  }


  if (ecma_is_property_configurable (property))
  {
    if (ecma_get_object_type (obj_p) == ECMA_OBJECT_TYPE_ARRAY)
    {
      ecma_array_object_delete_property (obj_p, property_name_p, property_ref.value_p);
    }
    else
    {

      ecma_delete_property (obj_p, property_ref.value_p);
    }


    return ECMA_VALUE_TRUE;
  }


  if (is_throw)
  {
    return ecma_raise_type_error (ECMA_ERR_MSG ("Expected a configurable property."));
  }


  return ECMA_VALUE_FALSE;
}
