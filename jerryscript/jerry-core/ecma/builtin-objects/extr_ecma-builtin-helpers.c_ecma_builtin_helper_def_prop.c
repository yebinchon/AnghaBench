
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int ecma_value_t ;
typedef int ecma_string_t ;
struct TYPE_3__ {int value; scalar_t__ flags; } ;
typedef TYPE_1__ ecma_property_descriptor_t ;
typedef int ecma_object_t ;


 int ECMA_NAME_DATA_PROPERTY_DESCRIPTOR_BITS ;
 int ecma_op_object_define_own_property (int *,int *,TYPE_1__*) ;

ecma_value_t
ecma_builtin_helper_def_prop (ecma_object_t *obj_p,
                              ecma_string_t *index_p,
                              ecma_value_t value,
                              uint32_t opts)

{
  ecma_property_descriptor_t prop_desc;

  prop_desc.flags = (uint16_t) (ECMA_NAME_DATA_PROPERTY_DESCRIPTOR_BITS | opts);

  prop_desc.value = value;

  return ecma_op_object_define_own_property (obj_p,
                                             index_p,
                                             &prop_desc);
}
