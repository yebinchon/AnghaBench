
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {int outer_reference_cp; } ;
struct TYPE_9__ {int property_list_cp; } ;
struct TYPE_11__ {int type_flags_refs; TYPE_2__ u2; TYPE_1__ u1; } ;
typedef TYPE_3__ ecma_object_t ;


 int ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ;
 int ECMA_OBJECT_FLAG_BUILT_IN_OR_LEXICAL_ENV ;
 int ECMA_SET_POINTER (int ,TYPE_3__*) ;
 int JMEM_CP_NULL ;
 TYPE_3__* ecma_alloc_object () ;
 int ecma_init_gc_info (TYPE_3__*) ;

ecma_object_t *
ecma_create_decl_lex_env (ecma_object_t *outer_lexical_environment_p)
{
  ecma_object_t *new_lexical_environment_p = ecma_alloc_object ();

  uint16_t type = ECMA_OBJECT_FLAG_BUILT_IN_OR_LEXICAL_ENV | ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE;
  new_lexical_environment_p->type_flags_refs = type;

  ecma_init_gc_info (new_lexical_environment_p);

  new_lexical_environment_p->u1.property_list_cp = JMEM_CP_NULL;

  ECMA_SET_POINTER (new_lexical_environment_p->u2.outer_reference_cp, outer_lexical_environment_p);

  return new_lexical_environment_p;
}
