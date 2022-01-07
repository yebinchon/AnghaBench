
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_object_t ;


 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ;
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND ;
 int ECMA_VALUE_UNDEFINED ;
 int JERRY_ASSERT (int) ;
 int * ecma_get_lex_env_binding_object (int *) ;
 scalar_t__ ecma_get_lex_env_type (int *) ;
 scalar_t__ ecma_is_lexical_environment (int *) ;
 int ecma_make_object_value (int *) ;
 int ecma_ref_object (int *) ;

ecma_value_t
ecma_op_implicit_this_value (ecma_object_t *lex_env_p)
{
  JERRY_ASSERT (lex_env_p != ((void*)0)
                && ecma_is_lexical_environment (lex_env_p));

  if (ecma_get_lex_env_type (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE)
  {
    return ECMA_VALUE_UNDEFINED;
  }
  else
  {
    JERRY_ASSERT (ecma_get_lex_env_type (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND);

    ecma_object_t *binding_obj_p = ecma_get_lex_env_binding_object (lex_env_p);
    ecma_ref_object (binding_obj_p);

    return ecma_make_object_value (binding_obj_p);
  }
}
