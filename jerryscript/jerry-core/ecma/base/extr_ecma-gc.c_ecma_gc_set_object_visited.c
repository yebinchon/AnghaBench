
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_4__ {int type_flags_refs; } ;
typedef TYPE_1__ ecma_object_t ;


 int ECMA_OBJECT_NON_VISITED ;
 int ECMA_OBJECT_REF_ONE ;
 int JERRY_ASSERT (int) ;
 scalar_t__ JERRY_CONTEXT (int ) ;
 int ecma_gc_mark (TYPE_1__*) ;
 int ecma_gc_mark_recursion_limit ;

__attribute__((used)) static void
ecma_gc_set_object_visited (ecma_object_t *object_p)
{
  if (object_p->type_flags_refs >= ECMA_OBJECT_NON_VISITED)
  {
    object_p->type_flags_refs = (uint16_t) (object_p->type_flags_refs & (ECMA_OBJECT_REF_ONE - 1));

  }
}
