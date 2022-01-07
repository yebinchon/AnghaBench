
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic_string_id; } ;
typedef TYPE_1__ ecma_builtin_property_descriptor_t ;
typedef size_t ecma_builtin_id_t ;


 size_t ECMA_BUILTIN_ID__COUNT ;
 int JERRY_ASSERT (int) ;
 scalar_t__ LIT_MAGIC_STRING__COUNT ;
 TYPE_1__** ecma_builtin_property_list_references ;

__attribute__((used)) static size_t
ecma_builtin_get_property_count (ecma_builtin_id_t builtin_id)
{
  JERRY_ASSERT (builtin_id < ECMA_BUILTIN_ID__COUNT);
  const ecma_builtin_property_descriptor_t *property_list_p = ecma_builtin_property_list_references[builtin_id];

  const ecma_builtin_property_descriptor_t *curr_property_p = property_list_p;

  while (curr_property_p->magic_string_id != LIT_MAGIC_STRING__COUNT)
  {
    curr_property_p++;
  }

  return (size_t) (curr_property_p - property_list_p);
}
