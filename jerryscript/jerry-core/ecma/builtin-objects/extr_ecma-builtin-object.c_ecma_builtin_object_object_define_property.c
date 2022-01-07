
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ecma_value_t ;
typedef int ecma_string_t ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ ecma_property_descriptor_t ;
typedef int ecma_object_t ;


 scalar_t__ ECMA_IS_VALUE_ERROR (int ) ;
 int ECMA_PROP_IS_THROW ;
 int ecma_free_property_descriptor (TYPE_1__*) ;
 int ecma_free_value (int ) ;
 int ecma_make_object_value (int *) ;
 int ecma_op_object_define_own_property (int *,int *,TYPE_1__*) ;
 int ecma_op_to_property_descriptor (int ,TYPE_1__*) ;
 int ecma_ref_object (int *) ;

ecma_value_t
ecma_builtin_object_object_define_property (ecma_object_t *obj_p,
                                            ecma_string_t *name_str_p,
                                            ecma_value_t arg3)
{
  ecma_property_descriptor_t prop_desc;

  ecma_value_t conv_result = ecma_op_to_property_descriptor (arg3, &prop_desc);

  if (ECMA_IS_VALUE_ERROR (conv_result))
  {
    return conv_result;
  }

  prop_desc.flags |= ECMA_PROP_IS_THROW;

  ecma_value_t define_own_prop_ret = ecma_op_object_define_own_property (obj_p,
                                                                         name_str_p,
                                                                         &prop_desc);

  ecma_free_property_descriptor (&prop_desc);
  ecma_free_value (conv_result);

  if (ECMA_IS_VALUE_ERROR (define_own_prop_ret))
  {
    return define_own_prop_ret;
  }

  ecma_ref_object (obj_p);
  ecma_free_value (define_own_prop_ret);

  return ecma_make_object_value (obj_p);
}
