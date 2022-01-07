
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_string_t ;
typedef int ecma_property_t ;
typedef int ecma_object_t ;
typedef scalar_t__ ecma_lexical_environment_type_t ;


 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ;
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND ;
 int JERRY_ASSERT (int) ;
 int * ecma_find_named_property (int *,int *) ;
 int * ecma_get_lex_env_binding_object (int *) ;
 scalar_t__ ecma_get_lex_env_type (int *) ;
 scalar_t__ ecma_is_lexical_environment (int *) ;
 int ecma_op_object_has_property (int *,int *) ;

bool
ecma_op_has_binding (ecma_object_t *lex_env_p,
                     ecma_string_t *name_p)
{
  JERRY_ASSERT (lex_env_p != ((void*)0)
                && ecma_is_lexical_environment (lex_env_p));

  ecma_lexical_environment_type_t lex_env_type = ecma_get_lex_env_type (lex_env_p);

  if (lex_env_type == ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE)
  {
    ecma_property_t *property_p = ecma_find_named_property (lex_env_p, name_p);

    return (property_p != ((void*)0));
  }
  else
  {
    JERRY_ASSERT (lex_env_type == ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND);

    ecma_object_t *binding_obj_p = ecma_get_lex_env_binding_object (lex_env_p);

    return ecma_op_object_has_property (binding_obj_p, name_p);
  }
}
