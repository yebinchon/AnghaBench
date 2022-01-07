
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_string_t ;
typedef int ecma_property_descriptor_t ;
typedef int ecma_object_t ;


 int ECMA_VALUE_UNDEFINED ;
 int ecma_free_property_descriptor (int *) ;
 int ecma_make_object_value (int *) ;
 int * ecma_op_from_property_descriptor (int *) ;
 scalar_t__ ecma_op_object_get_own_property_descriptor (int *,int *,int *) ;

ecma_value_t
ecma_builtin_object_object_get_own_property_descriptor (ecma_object_t *obj_p,
                                                        ecma_string_t *name_str_p)
{

  ecma_property_descriptor_t prop_desc;

  if (ecma_op_object_get_own_property_descriptor (obj_p, name_str_p, &prop_desc))
  {

    ecma_object_t *desc_obj_p = ecma_op_from_property_descriptor (&prop_desc);

    ecma_free_property_descriptor (&prop_desc);

    return ecma_make_object_value (desc_obj_p);
  }

  return ECMA_VALUE_UNDEFINED;
}
