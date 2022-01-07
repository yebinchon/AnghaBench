
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_object_t ;
typedef scalar_t__ ecma_length_t ;


 int JERRY_ASSERT (int) ;
 int ecma_make_object_value (int *) ;
 int ecma_op_create_object_object_arg (int const) ;
 int * ecma_op_create_object_object_noarg () ;

ecma_value_t
ecma_builtin_object_dispatch_construct (const ecma_value_t *arguments_list_p,
                                        ecma_length_t arguments_list_len)
{
  JERRY_ASSERT (arguments_list_len == 0 || arguments_list_p != ((void*)0));

  if (arguments_list_len == 0)
  {
    ecma_object_t *obj_p = ecma_op_create_object_object_noarg ();

    return ecma_make_object_value (obj_p);
  }

  return ecma_op_create_object_object_arg (arguments_list_p[0]);
}
