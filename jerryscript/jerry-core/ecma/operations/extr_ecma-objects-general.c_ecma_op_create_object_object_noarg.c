
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_object_t ;


 int ECMA_BUILTIN_ID_OBJECT_PROTOTYPE ;
 int * ecma_builtin_get (int ) ;
 int * ecma_op_create_object_object_noarg_and_set_prototype (int *) ;

ecma_object_t *
ecma_op_create_object_object_noarg (void)
{
  ecma_object_t *object_prototype_p = ecma_builtin_get (ECMA_BUILTIN_ID_OBJECT_PROTOTYPE);


  return ecma_op_create_object_object_noarg_and_set_prototype (object_prototype_p);
}
