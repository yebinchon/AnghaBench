
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ecma_value_t ;
typedef int ecma_string_t ;
struct TYPE_3__ {int value; } ;
typedef TYPE_1__ ecma_property_value_t ;
typedef int ecma_object_t ;


 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ;
 int ECMA_PROPERTY_FIXED ;
 int JERRY_ASSERT (int) ;
 int ecma_copy_value_if_not_object (int ) ;
 TYPE_1__* ecma_create_named_data_property (int *,int *,int ,int *) ;
 scalar_t__ ecma_get_lex_env_type (int *) ;
 scalar_t__ ecma_is_lexical_environment (int *) ;

void
ecma_op_create_immutable_binding (ecma_object_t *lex_env_p,
                                  ecma_string_t *name_p,
                                  ecma_value_t value)
{
  JERRY_ASSERT (lex_env_p != ((void*)0)
                && ecma_is_lexical_environment (lex_env_p));
  JERRY_ASSERT (ecma_get_lex_env_type (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE);





  ecma_property_value_t *prop_value_p = ecma_create_named_data_property (lex_env_p,
                                                                         name_p,
                                                                         ECMA_PROPERTY_FIXED,
                                                                         ((void*)0));

  prop_value_p->value = ecma_copy_value_if_not_object (value);
}
