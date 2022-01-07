
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


 int ECMA_ERR_MSG (char*) ;
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ;
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND ;
 int ECMA_VALUE_UNDEFINED ;
 int JERRY_ASSERT (int) ;
 int ecma_copy_value (int ) ;
 int * ecma_get_lex_env_binding_object (int *) ;
 scalar_t__ ecma_get_lex_env_type (int *) ;
 TYPE_1__* ecma_get_named_data_property (int *,int *) ;
 scalar_t__ ecma_is_lexical_environment (int *) ;
 int ecma_is_value_found (int ) ;
 int ecma_op_object_find (int *,int *) ;
 int ecma_raise_reference_error (int ) ;

ecma_value_t
ecma_op_get_binding_value (ecma_object_t *lex_env_p,
                           ecma_string_t *name_p,
                           bool is_strict)
{
  JERRY_ASSERT (lex_env_p != ((void*)0)
                && ecma_is_lexical_environment (lex_env_p));
  JERRY_ASSERT (name_p != ((void*)0));

  if (ecma_get_lex_env_type (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE)
  {
    ecma_property_value_t *prop_value_p = ecma_get_named_data_property (lex_env_p, name_p);

    return ecma_copy_value (prop_value_p->value);
  }
  else
  {
    JERRY_ASSERT (ecma_get_lex_env_type (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND);

    ecma_object_t *binding_obj_p = ecma_get_lex_env_binding_object (lex_env_p);

    ecma_value_t result = ecma_op_object_find (binding_obj_p, name_p);

    if (!ecma_is_value_found (result))
    {
      if (is_strict)
      {
        result = ecma_raise_reference_error (ECMA_ERR_MSG ("Binding does not exist or is uninitialised."));
      }
      else
      {
        result = ECMA_VALUE_UNDEFINED;
      }
    }

    return result;
  }
}
