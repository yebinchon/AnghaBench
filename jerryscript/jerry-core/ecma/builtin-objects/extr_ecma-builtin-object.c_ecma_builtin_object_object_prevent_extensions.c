
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_object_t ;


 int ecma_make_object_value (int *) ;
 int ecma_ref_object (int *) ;
 int ecma_set_object_extensible (int *,int) ;

ecma_value_t
ecma_builtin_object_object_prevent_extensions (ecma_object_t *obj_p)
{
  ecma_set_object_extensible (obj_p, 0);
  ecma_ref_object (obj_p);

  return ecma_make_object_value (obj_p);
}
