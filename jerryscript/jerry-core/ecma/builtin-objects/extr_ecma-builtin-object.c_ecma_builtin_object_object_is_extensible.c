
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_object_t ;


 int ecma_get_object_extensible (int *) ;
 int ecma_make_boolean_value (int ) ;

ecma_value_t
ecma_builtin_object_object_is_extensible (ecma_object_t *obj_p)
{
  return ecma_make_boolean_value (ecma_get_object_extensible (obj_p));
}
