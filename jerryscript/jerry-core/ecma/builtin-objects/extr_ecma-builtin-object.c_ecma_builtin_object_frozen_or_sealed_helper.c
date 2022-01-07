
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ecma_value_t ;
typedef int ecma_string_t ;
typedef int ecma_property_t ;
typedef int ecma_object_t ;
struct TYPE_4__ {size_t item_count; int * buffer_p; } ;
typedef TYPE_1__ ecma_collection_t ;


 int ECMA_LIST_NO_OPTS ;
 int ECMA_OBJECT_ROUTINE_IS_FROZEN ;
 int ECMA_OBJECT_ROUTINE_IS_SEALED ;
 int ECMA_PROPERTY_GET_NO_OPTIONS ;
 scalar_t__ ECMA_PROPERTY_GET_TYPE (int ) ;
 scalar_t__ ECMA_PROPERTY_TYPE_NAMEDACCESSOR ;
 int ECMA_VALUE_FALSE ;
 int ECMA_VALUE_TRUE ;
 int JERRY_ASSERT (int) ;
 int ecma_collection_free (TYPE_1__*) ;
 scalar_t__ ecma_get_object_extensible (int *) ;
 int * ecma_get_string_from_value (int ) ;
 scalar_t__ ecma_is_property_configurable (int ) ;
 scalar_t__ ecma_is_property_writable (int ) ;
 int ecma_op_object_get_own_property (int *,int *,int *,int ) ;
 TYPE_1__* ecma_op_object_get_property_names (int *,int ) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_object_frozen_or_sealed_helper (ecma_object_t *obj_p,
                                             int mode)
{
  JERRY_ASSERT (mode == ECMA_OBJECT_ROUTINE_IS_FROZEN || mode == ECMA_OBJECT_ROUTINE_IS_SEALED);


  if (ecma_get_object_extensible (obj_p))
  {
    return ECMA_VALUE_FALSE;
  }


  ecma_value_t ret_value = ECMA_VALUE_TRUE;


  ecma_collection_t *props_p = ecma_op_object_get_property_names (obj_p, ECMA_LIST_NO_OPTS);

  ecma_value_t *buffer_p = props_p->buffer_p;

  for (uint32_t i = 0; i < props_p->item_count; i++)
  {
    ecma_string_t *property_name_p = ecma_get_string_from_value (buffer_p[i]);


    ecma_property_t property = ecma_op_object_get_own_property (obj_p,
                                                                property_name_p,
                                                                ((void*)0),
                                                                ECMA_PROPERTY_GET_NO_OPTIONS);


    if (mode == ECMA_OBJECT_ROUTINE_IS_FROZEN
        && ECMA_PROPERTY_GET_TYPE (property) != ECMA_PROPERTY_TYPE_NAMEDACCESSOR
        && ecma_is_property_writable (property))
    {
      ret_value = ECMA_VALUE_FALSE;
      break;
    }


    if (ecma_is_property_configurable (property))
    {
      ret_value = ECMA_VALUE_FALSE;
      break;
    }
  }

  ecma_collection_free (props_p);

  return ret_value;
}
