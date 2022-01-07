
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int ecma_value_t ;
typedef int ecma_object_t ;


 scalar_t__ ECMA_IS_VALUE_ERROR (int ) ;
 scalar_t__ ECMA_OBJECT_TYPE_ARRAY ;
 int ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE ;
 int ECMA_VALUE_EMPTY ;
 int JERRY_ASSERT (int ) ;
 scalar_t__ ecma_array_get_length (int *) ;
 int ecma_builtin_helper_def_prop_by_index (int *,scalar_t__,int ,int ) ;
 int ecma_free_value (int ) ;
 int * ecma_get_object_from_value (int ) ;
 scalar_t__ ecma_get_object_type (int *) ;
 int ecma_is_value_found (int ) ;
 scalar_t__ ecma_is_value_object (int ) ;
 int ecma_is_value_true (int ) ;
 int ecma_op_object_find_by_uint32_index (int *,scalar_t__) ;

ecma_value_t
ecma_builtin_helper_array_concat_value (ecma_object_t *array_obj_p,
                                        uint32_t *length_p,
                                        ecma_value_t value)
{

  if (ecma_is_value_object (value))
  {
    ecma_object_t *obj_p = ecma_get_object_from_value (value);

    if (ecma_get_object_type (obj_p) == ECMA_OBJECT_TYPE_ARRAY)
    {

      uint32_t arg_len = ecma_array_get_length (obj_p);


      for (uint32_t array_index = 0; array_index < arg_len; array_index++)
      {

        ecma_value_t get_value = ecma_op_object_find_by_uint32_index (obj_p, array_index);

        if (ECMA_IS_VALUE_ERROR (get_value))
        {
          return get_value;
        }

        if (!ecma_is_value_found (get_value))
        {
          continue;
        }



        ecma_value_t put_comp = ecma_builtin_helper_def_prop_by_index (array_obj_p,
                                                                       *length_p + array_index,
                                                                       get_value,
                                                                       ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE);

        JERRY_ASSERT (ecma_is_value_true (put_comp));
        ecma_free_value (get_value);
      }

      *length_p += arg_len;
      return ECMA_VALUE_EMPTY;
    }
  }



  ecma_value_t put_comp = ecma_builtin_helper_def_prop_by_index (array_obj_p,
                                                                 (*length_p)++,
                                                                 value,
                                                                 ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE);
  JERRY_ASSERT (ecma_is_value_true (put_comp));

  return ECMA_VALUE_EMPTY;
}
