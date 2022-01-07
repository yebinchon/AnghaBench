
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int uint16_t ;
typedef int ecma_value_t ;
typedef int ecma_string_t ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_1__ ecma_property_descriptor_t ;
typedef int ecma_object_t ;
struct TYPE_9__ {size_t item_count; int * buffer_p; } ;
typedef TYPE_2__ ecma_collection_t ;


 scalar_t__ ECMA_IS_VALUE_ERROR (int ) ;
 int ECMA_LIST_CONVERT_FAST_ARRAYS ;
 scalar_t__ ECMA_PROP_IS_CONFIGURABLE ;
 int ECMA_PROP_IS_THROW ;
 int ECMA_PROP_IS_WRITABLE ;
 int ECMA_PROP_IS_WRITABLE_DEFINED ;
 int ecma_collection_free (TYPE_2__*) ;
 int ecma_free_property_descriptor (TYPE_1__*) ;
 int ecma_free_value (int ) ;
 int * ecma_get_string_from_value (int ) ;
 int ecma_make_object_value (int *) ;
 int ecma_op_object_define_own_property (int *,int *,TYPE_1__*) ;
 int ecma_op_object_get_own_property_descriptor (int *,int *,TYPE_1__*) ;
 TYPE_2__* ecma_op_object_get_property_names (int *,int ) ;
 int ecma_ref_object (int *) ;
 int ecma_set_object_extensible (int *,int) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_object_object_freeze (ecma_object_t *obj_p)
{
  ecma_collection_t *props_p = ecma_op_object_get_property_names (obj_p, ECMA_LIST_CONVERT_FAST_ARRAYS);

  ecma_value_t *buffer_p = props_p->buffer_p;

  for (uint32_t i = 0; i < props_p->item_count; i++)
  {
    ecma_string_t *property_name_p = ecma_get_string_from_value (buffer_p[i]);


    ecma_property_descriptor_t prop_desc;

    if (!ecma_op_object_get_own_property_descriptor (obj_p, property_name_p, &prop_desc))
    {
      continue;
    }


    if ((prop_desc.flags & (ECMA_PROP_IS_WRITABLE_DEFINED | ECMA_PROP_IS_WRITABLE))
        == (ECMA_PROP_IS_WRITABLE_DEFINED | ECMA_PROP_IS_WRITABLE))
    {
      prop_desc.flags &= (uint16_t) ~ECMA_PROP_IS_WRITABLE;
    }


    prop_desc.flags &= (uint16_t) ~ECMA_PROP_IS_CONFIGURABLE;
    prop_desc.flags |= ECMA_PROP_IS_THROW;


    ecma_value_t define_own_prop_ret = ecma_op_object_define_own_property (obj_p,
                                                                           property_name_p,
                                                                           &prop_desc);

    ecma_free_property_descriptor (&prop_desc);

    if (ECMA_IS_VALUE_ERROR (define_own_prop_ret))
    {
      ecma_collection_free (props_p);
      return define_own_prop_ret;
    }

    ecma_free_value (define_own_prop_ret);
  }

  ecma_collection_free (props_p);


  ecma_set_object_extensible (obj_p, 0);


  ecma_ref_object (obj_p);
  return ecma_make_object_value (obj_p);
}
