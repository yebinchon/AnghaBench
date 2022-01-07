
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_object_t ;


 int ECMA_LIST_ENUMERABLE ;
 int ecma_builtin_helper_object_get_properties (int *,int ) ;

__attribute__((used)) static ecma_value_t
ecma_builtin_object_object_keys (ecma_object_t *obj_p)
{
  return ecma_builtin_helper_object_get_properties (obj_p, ECMA_LIST_ENUMERABLE);
}
