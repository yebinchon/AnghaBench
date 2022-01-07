
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ ecma_value_t ;
typedef int ecma_string_t ;
typedef int ecma_object_t ;
struct TYPE_5__ {scalar_t__ length; } ;
struct TYPE_6__ {TYPE_1__ u1; } ;
struct TYPE_7__ {TYPE_2__ pseudo_array; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
typedef TYPE_4__ ecma_extended_object_t ;


 scalar_t__ ECMA_IS_VALUE_ERROR (scalar_t__) ;
 scalar_t__ ECMA_STRING_NOT_ARRAY_INDEX ;
 scalar_t__ ECMA_VALUE_EMPTY ;
 scalar_t__ ECMA_VALUE_TRUE ;
 int JERRY_ASSERT (int ) ;
 int ecma_deref_ecma_string (int *) ;
 int * ecma_get_string_from_value (scalar_t__) ;
 int ecma_is_value_boolean (scalar_t__) ;
 scalar_t__ ecma_is_value_true (scalar_t__) ;
 scalar_t__ ecma_op_general_object_delete (int *,int *,int) ;
 scalar_t__ ecma_string_get_array_index (int *) ;

ecma_value_t
ecma_op_arguments_object_delete (ecma_object_t *object_p,
                                 ecma_string_t *property_name_p,
                                 bool is_throw)
{

  ecma_value_t ret_value = ecma_op_general_object_delete (object_p, property_name_p, is_throw);

  if (ECMA_IS_VALUE_ERROR (ret_value))
  {
    return ret_value;
  }

  JERRY_ASSERT (ecma_is_value_boolean (ret_value));

  if (ecma_is_value_true (ret_value))
  {
    uint32_t index = ecma_string_get_array_index (property_name_p);

    if (index != ECMA_STRING_NOT_ARRAY_INDEX)
    {
      ecma_extended_object_t *ext_object_p = (ecma_extended_object_t *) object_p;

      if (index < ext_object_p->u.pseudo_array.u1.length)
      {
        ecma_value_t *arg_Literal_p = (ecma_value_t *) (ext_object_p + 1);

        if (arg_Literal_p[index] != ECMA_VALUE_EMPTY)
        {
          ecma_string_t *name_p = ecma_get_string_from_value (arg_Literal_p[index]);
          ecma_deref_ecma_string (name_p);
          arg_Literal_p[index] = ECMA_VALUE_EMPTY;
        }
      }
    }

    ret_value = ECMA_VALUE_TRUE;
  }

  return ret_value;
}
