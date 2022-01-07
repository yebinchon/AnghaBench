
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_string_t ;
typedef int ecma_property_t ;
typedef int ecma_object_t ;


 int ECMA_ERR_MSG (char*) ;
 scalar_t__ ECMA_IS_VALUE_ERROR (int ) ;
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ;
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND ;
 scalar_t__ ECMA_PROPERTY_GET_TYPE (int ) ;
 scalar_t__ ECMA_PROPERTY_TYPE_NAMEDDATA ;
 int ECMA_PROPERTY_VALUE_PTR (int *) ;
 int ECMA_VALUE_EMPTY ;
 int JERRY_ASSERT (int) ;
 int * ecma_find_named_property (int *,int *) ;
 int * ecma_get_lex_env_binding_object (int *) ;
 scalar_t__ ecma_get_lex_env_type (int *) ;
 scalar_t__ ecma_is_lexical_environment (int *) ;
 scalar_t__ ecma_is_property_writable (int ) ;
 int ecma_is_value_boolean (int ) ;
 int ecma_named_data_property_assign_value (int *,int ,int ) ;
 int ecma_op_object_put (int *,int *,int ,int) ;
 int ecma_raise_type_error (int ) ;

ecma_value_t
ecma_op_set_mutable_binding (ecma_object_t *lex_env_p,
                             ecma_string_t *name_p,
                             ecma_value_t value,
                             bool is_strict)
{
  JERRY_ASSERT (lex_env_p != ((void*)0)
                && ecma_is_lexical_environment (lex_env_p));
  JERRY_ASSERT (name_p != ((void*)0));

  if (ecma_get_lex_env_type (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE)
  {
    ecma_property_t *property_p = ecma_find_named_property (lex_env_p, name_p);

    JERRY_ASSERT (property_p != ((void*)0)
                  && ECMA_PROPERTY_GET_TYPE (*property_p) == ECMA_PROPERTY_TYPE_NAMEDDATA);

    if (ecma_is_property_writable (*property_p))
    {
      ecma_named_data_property_assign_value (lex_env_p, ECMA_PROPERTY_VALUE_PTR (property_p), value);
    }
    else if (is_strict)
    {
      return ecma_raise_type_error (ECMA_ERR_MSG ("Binding cannot be set."));
    }
  }
  else
  {
    JERRY_ASSERT (ecma_get_lex_env_type (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND);

    ecma_object_t *binding_obj_p = ecma_get_lex_env_binding_object (lex_env_p);

    ecma_value_t completion = ecma_op_object_put (binding_obj_p,
                                                  name_p,
                                                  value,
                                                  is_strict);

    if (ECMA_IS_VALUE_ERROR (completion))
    {
      return completion;
    }

    JERRY_ASSERT (ecma_is_value_boolean (completion));
  }

  return ECMA_VALUE_EMPTY;
}
