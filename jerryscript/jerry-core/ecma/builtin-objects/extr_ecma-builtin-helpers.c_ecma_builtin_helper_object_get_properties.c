
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ecma_value_t ;
typedef int ecma_object_t ;
struct TYPE_5__ {int item_count; int * buffer_p; } ;
typedef TYPE_1__ ecma_collection_t ;


 int ECMA_IS_VALUE_ERROR (int ) ;
 int JERRY_ASSERT (int) ;
 int ecma_collection_destroy (TYPE_1__*) ;
 int ecma_collection_free_objects (TYPE_1__*) ;
 int * ecma_fast_array_extend (int *,int) ;
 int * ecma_get_object_from_value (int ) ;
 int ecma_op_create_array_object (int *,int ,int) ;
 TYPE_1__* ecma_op_object_get_property_names (int *,int ) ;
 int ecma_op_object_is_fast_array (int *) ;
 int memcpy (int *,int *,int) ;

ecma_value_t
ecma_builtin_helper_object_get_properties (ecma_object_t *obj_p,
                                           uint32_t opts)
{
  JERRY_ASSERT (obj_p != ((void*)0));

  ecma_value_t new_array = ecma_op_create_array_object (((void*)0), 0, 0);
  JERRY_ASSERT (!ECMA_IS_VALUE_ERROR (new_array));
  ecma_object_t *new_array_p = ecma_get_object_from_value (new_array);

  ecma_collection_t *props_p = ecma_op_object_get_property_names (obj_p, opts);

  if (props_p->item_count == 0)
  {
    ecma_collection_destroy (props_p);
    return new_array;
  }

  JERRY_ASSERT (ecma_op_object_is_fast_array (new_array_p));

  ecma_value_t *buffer_p = props_p->buffer_p;
  ecma_value_t *values_p = ecma_fast_array_extend (new_array_p, props_p->item_count);

  memcpy (values_p, buffer_p, props_p->item_count * sizeof (ecma_value_t));

  ecma_collection_free_objects (props_p);

  return new_array;
}
