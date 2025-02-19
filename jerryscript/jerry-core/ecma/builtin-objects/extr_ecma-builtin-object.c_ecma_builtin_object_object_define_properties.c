
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ecma_value_t ;
typedef int ecma_object_t ;
struct TYPE_10__ {size_t item_count; int * buffer_p; } ;
typedef TYPE_1__ ecma_collection_t ;
struct TYPE_11__ {int flags; } ;


 scalar_t__ ECMA_IS_VALUE_ERROR (int ) ;
 int ECMA_LIST_CONVERT_FAST_ARRAYS ;
 int ECMA_LIST_ENUMERABLE ;
 int ECMA_PROP_IS_THROW ;
 int ECMA_VALUE_ERROR ;
 int JMEM_DEFINE_LOCAL_ARRAY (TYPE_2__*,size_t,int ) ;
 int JMEM_FINALIZE_LOCAL_ARRAY (TYPE_2__*) ;
 int ecma_collection_free (TYPE_1__*) ;
 int ecma_deref_object (int *) ;
 int ecma_free_property_descriptor (TYPE_2__*) ;
 int ecma_free_value (int ) ;
 int * ecma_get_object_from_value (int ) ;
 int ecma_get_string_from_value (int ) ;
 int ecma_make_object_value (int *) ;
 int ecma_op_object_define_own_property (int *,int ,TYPE_2__*) ;
 int ecma_op_object_get (int *,int ) ;
 TYPE_1__* ecma_op_object_get_property_names (int *,int) ;
 int ecma_op_to_object (int ) ;
 int ecma_op_to_property_descriptor (int ,TYPE_2__*) ;
 int ecma_property_descriptor_t ;
 int ecma_ref_object (int *) ;
 TYPE_2__* property_descriptors ;

__attribute__((used)) static ecma_value_t
ecma_builtin_object_object_define_properties (ecma_object_t *obj_p,
                                              ecma_value_t arg2)
{

  ecma_value_t props = ecma_op_to_object (arg2);

  if (ECMA_IS_VALUE_ERROR (props))
  {
    return props;
  }

  ecma_object_t *props_p = ecma_get_object_from_value (props);

  ecma_collection_t *prop_names_p = ecma_op_object_get_property_names (props_p, ECMA_LIST_CONVERT_FAST_ARRAYS
                                                                                | ECMA_LIST_ENUMERABLE);
  ecma_value_t ret_value = ECMA_VALUE_ERROR;

  ecma_value_t *buffer_p = prop_names_p->buffer_p;


  JMEM_DEFINE_LOCAL_ARRAY (property_descriptors, prop_names_p->item_count, ecma_property_descriptor_t);
  uint32_t property_descriptor_number = 0;

  for (uint32_t i = 0; i < prop_names_p->item_count; i++)
  {

    ecma_value_t desc_obj = ecma_op_object_get (props_p, ecma_get_string_from_value (buffer_p[i]));

    if (ECMA_IS_VALUE_ERROR (desc_obj))
    {
      goto cleanup;
    }


    ecma_value_t conv_result = ecma_op_to_property_descriptor (desc_obj,
                                                               &property_descriptors[property_descriptor_number]);

    property_descriptors[property_descriptor_number].flags |= ECMA_PROP_IS_THROW;

    ecma_free_value (desc_obj);

    if (ECMA_IS_VALUE_ERROR (conv_result))
    {
      goto cleanup;
    }

    property_descriptor_number++;

    ecma_free_value (conv_result);
  }


  buffer_p = prop_names_p->buffer_p;

  for (uint32_t i = 0; i < prop_names_p->item_count; i++)
  {
    ecma_value_t define_own_prop_ret = ecma_op_object_define_own_property (obj_p,
                                                                            ecma_get_string_from_value (buffer_p[i]),
                                                                            &property_descriptors[i]);
    if (ECMA_IS_VALUE_ERROR (define_own_prop_ret))
    {
      goto cleanup;
    }

    ecma_free_value (define_own_prop_ret);
  }

  ecma_ref_object (obj_p);
  ret_value = ecma_make_object_value (obj_p);

cleanup:

  for (uint32_t index = 0;
       index < property_descriptor_number;
       index++)
  {
    ecma_free_property_descriptor (&property_descriptors[index]);
  }

  JMEM_FINALIZE_LOCAL_ARRAY (property_descriptors);

  ecma_collection_free (prop_names_p);

  ecma_deref_object (props_p);

  return ret_value;
}
