
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_string_t ;
typedef int ecma_property_t ;
typedef int ecma_object_t ;


 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ;
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND ;
 scalar_t__ ECMA_PROPERTY_GET_TYPE (int ) ;
 scalar_t__ ECMA_PROPERTY_TYPE_NAMEDDATA ;
 int ECMA_PROPERTY_VALUE_PTR (int *) ;
 int ECMA_VALUE_FALSE ;
 int ECMA_VALUE_TRUE ;
 int JERRY_ASSERT (int) ;
 int ecma_delete_property (int *,int ) ;
 int * ecma_find_named_property (int *,int *) ;
 int * ecma_get_lex_env_binding_object (int *) ;
 scalar_t__ ecma_get_lex_env_type (int *) ;
 scalar_t__ ecma_is_lexical_environment (int *) ;
 int ecma_is_property_configurable (int ) ;
 int ecma_op_object_delete (int *,int *,int) ;

ecma_value_t
ecma_op_delete_binding (ecma_object_t *lex_env_p,
                        ecma_string_t *name_p)
{
  JERRY_ASSERT (lex_env_p != ((void*)0)
                && ecma_is_lexical_environment (lex_env_p));
  JERRY_ASSERT (name_p != ((void*)0));


  if (ecma_get_lex_env_type (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE)
  {
    ecma_property_t *prop_p = ecma_find_named_property (lex_env_p, name_p);
    ecma_value_t ret_val;

    if (prop_p == ((void*)0))
    {
      ret_val = ECMA_VALUE_TRUE;
    }
    else
    {
      JERRY_ASSERT (ECMA_PROPERTY_GET_TYPE (*prop_p) == ECMA_PROPERTY_TYPE_NAMEDDATA);

      if (!ecma_is_property_configurable (*prop_p))
      {
        ret_val = ECMA_VALUE_FALSE;
      }
      else
      {
        ecma_delete_property (lex_env_p, ECMA_PROPERTY_VALUE_PTR (prop_p));

        ret_val = ECMA_VALUE_TRUE;
      }
    }

    return ret_val;
  }
  else
  {
    JERRY_ASSERT (ecma_get_lex_env_type (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND);

    ecma_object_t *binding_obj_p = ecma_get_lex_env_binding_object (lex_env_p);

    return ecma_op_object_delete (binding_obj_p, name_p, 0);
  }
}
