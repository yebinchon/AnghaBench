
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int ecma_value_t ;
typedef int ecma_string_t ;
typedef int ecma_object_t ;


 int * ECMA_CREATE_DIRECT_UINT32_STRING (scalar_t__) ;
 scalar_t__ ECMA_DIRECT_STRING_MAX_IMM ;
 scalar_t__ JERRY_LIKELY (int) ;
 int ecma_builtin_helper_def_prop (int *,int *,int ,scalar_t__) ;
 int ecma_deref_ecma_string (int *) ;
 int * ecma_new_non_direct_string_from_uint32 (scalar_t__) ;

ecma_value_t
ecma_builtin_helper_def_prop_by_index (ecma_object_t *obj_p,
                                       uint32_t index,
                                       ecma_value_t value,
                                       uint32_t opts)
{
  if (JERRY_LIKELY (index <= ECMA_DIRECT_STRING_MAX_IMM))
  {
    return ecma_builtin_helper_def_prop (obj_p,
                                         ECMA_CREATE_DIRECT_UINT32_STRING (index),
                                         value,
                                         opts);
  }

  ecma_string_t *index_str_p = ecma_new_non_direct_string_from_uint32 (index);
  ecma_value_t ret_value = ecma_builtin_helper_def_prop (obj_p,
                                                         index_str_p,
                                                         value,
                                                         opts);
  ecma_deref_ecma_string (index_str_p);

  return ret_value;
}
