#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  int /*<<< orphan*/  ecma_property_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ; 
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ECMA_PROPERTY_TYPE_NAMEDDATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ECMA_VALUE_FALSE ; 
 int /*<<< orphan*/  ECMA_VALUE_TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

ecma_value_t
FUNC10 (ecma_object_t *lex_env_p, /**< lexical environment */
                        ecma_string_t *name_p) /**< argument N */
{
  FUNC2 (lex_env_p != NULL
                && FUNC7 (lex_env_p));
  FUNC2 (name_p != NULL);


  if (FUNC6 (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE)
  {
    ecma_property_t *prop_p = FUNC4 (lex_env_p, name_p);
    ecma_value_t ret_val;

    if (prop_p == NULL)
    {
      ret_val = ECMA_VALUE_TRUE;
    }
    else
    {
      FUNC2 (FUNC0 (*prop_p) == ECMA_PROPERTY_TYPE_NAMEDDATA);

      if (!FUNC8 (*prop_p))
      {
        ret_val = ECMA_VALUE_FALSE;
      }
      else
      {
        FUNC3 (lex_env_p, FUNC1 (prop_p));

        ret_val = ECMA_VALUE_TRUE;
      }
    }

    return ret_val;
  }
  else
  {
    FUNC2 (FUNC6 (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND);

    ecma_object_t *binding_obj_p = FUNC5 (lex_env_p);

    return FUNC9 (binding_obj_p, name_p, false);
  }
}