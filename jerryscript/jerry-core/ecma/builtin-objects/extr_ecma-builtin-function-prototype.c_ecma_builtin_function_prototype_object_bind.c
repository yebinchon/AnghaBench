
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* ecma_value_t ;
typedef int ecma_object_t ;
typedef int ecma_length_t ;
typedef int ecma_integer_value_t ;
struct TYPE_4__ {void* args_len_or_this; int target_function; } ;
struct TYPE_5__ {TYPE_1__ bound_function; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
typedef TYPE_3__ ecma_extended_object_t ;


 int ECMA_BUILTIN_ID_FUNCTION_PROTOTYPE ;
 int ECMA_OBJECT_TYPE_BOUND_FUNCTION ;
 int ECMA_SET_INTERNAL_VALUE_POINTER (int ,int *) ;
 void* ECMA_VALUE_UNDEFINED ;
 int JERRY_ASSERT (int) ;
 int * ecma_builtin_get (int ) ;
 void* ecma_copy_value_if_not_object (void* const) ;
 int * ecma_create_object (int *,size_t,int ) ;
 int ecma_is_value_integer_number (void* const) ;
 void* ecma_make_integer_value (int ) ;
 void* ecma_make_object_value (int *) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_function_prototype_object_bind (ecma_object_t *this_arg_obj_p ,
                                             const ecma_value_t *arguments_list_p,
                                             ecma_length_t arguments_number)
{

  ecma_object_t *prototype_obj_p = ecma_builtin_get (ECMA_BUILTIN_ID_FUNCTION_PROTOTYPE);

  ecma_object_t *function_p;
  ecma_extended_object_t *ext_function_p;

  if (arguments_number == 0
      || (arguments_number == 1 && !ecma_is_value_integer_number (arguments_list_p[0])))
  {
    function_p = ecma_create_object (prototype_obj_p,
                                     sizeof (ecma_extended_object_t),
                                     ECMA_OBJECT_TYPE_BOUND_FUNCTION);


    ext_function_p = (ecma_extended_object_t *) function_p;
    ECMA_SET_INTERNAL_VALUE_POINTER (ext_function_p->u.bound_function.target_function,
                                     this_arg_obj_p);

    ext_function_p->u.bound_function.args_len_or_this = ECMA_VALUE_UNDEFINED;

    if (arguments_number != 0)
    {
      ext_function_p->u.bound_function.args_len_or_this = ecma_copy_value_if_not_object (arguments_list_p[0]);
    }
  }
  else
  {
    JERRY_ASSERT (arguments_number > 0);

    size_t obj_size = sizeof (ecma_extended_object_t) + (arguments_number * sizeof (ecma_value_t));

    function_p = ecma_create_object (prototype_obj_p,
                                     obj_size,
                                     ECMA_OBJECT_TYPE_BOUND_FUNCTION);


    ext_function_p = (ecma_extended_object_t *) function_p;
    ECMA_SET_INTERNAL_VALUE_POINTER (ext_function_p->u.bound_function.target_function,
                                     this_arg_obj_p);



    ext_function_p->u.bound_function.args_len_or_this = ECMA_VALUE_UNDEFINED;
    ecma_value_t *args_p = (ecma_value_t *) (ext_function_p + 1);

    for (ecma_length_t i = 0; i < arguments_number; i++)
    {
      *args_p++ = ecma_copy_value_if_not_object (arguments_list_p[i]);
    }

    ecma_value_t args_len_or_this = ecma_make_integer_value ((ecma_integer_value_t) arguments_number);
    ext_function_p->u.bound_function.args_len_or_this = args_len_or_this;
  }
  return ecma_make_object_value (function_p);
}
