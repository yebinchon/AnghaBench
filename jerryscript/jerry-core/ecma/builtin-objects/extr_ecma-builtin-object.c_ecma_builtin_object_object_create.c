
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_object_t ;


 int ECMA_ERR_MSG (char*) ;
 scalar_t__ ECMA_IS_VALUE_ERROR (int ) ;
 int ecma_builtin_object_object_define_properties (int *,int ) ;
 int ecma_deref_object (int *) ;
 int ecma_free_value (int ) ;
 int * ecma_get_object_from_value (int ) ;
 int ecma_is_value_null (int ) ;
 int ecma_is_value_object (int ) ;
 int ecma_is_value_undefined (int ) ;
 int ecma_make_object_value (int *) ;
 int * ecma_op_create_object_object_noarg_and_set_prototype (int *) ;
 int ecma_raise_type_error (int ) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_object_object_create (ecma_value_t arg1,
                                   ecma_value_t arg2)
{

  if (!ecma_is_value_object (arg1) && !ecma_is_value_null (arg1))
  {
    return ecma_raise_type_error (ECMA_ERR_MSG ("Argument is not an object."));
  }

  ecma_object_t *obj_p = ((void*)0);

  if (!ecma_is_value_null (arg1))
  {
    obj_p = ecma_get_object_from_value (arg1);
  }

  ecma_object_t *result_obj_p = ecma_op_create_object_object_noarg_and_set_prototype (obj_p);


  if (!ecma_is_value_undefined (arg2))
  {
    ecma_value_t obj = ecma_builtin_object_object_define_properties (result_obj_p, arg2);

    if (ECMA_IS_VALUE_ERROR (obj))
    {
      ecma_deref_object (result_obj_p);
      return obj;
    }

    ecma_free_value (obj);
  }


  return ecma_make_object_value (result_obj_p);
}
