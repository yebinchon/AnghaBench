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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ; 
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ECMA_PROPERTY_TYPE_NAMEDDATA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ECMA_VALUE_EMPTY ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

ecma_value_t
FUNC14 (ecma_object_t *lex_env_p, /**< lexical environment */
                             ecma_string_t *name_p, /**< argument N */
                             ecma_value_t value, /**< argument V */
                             bool is_strict) /**< argument S */
{
  FUNC4 (lex_env_p != NULL
                && FUNC8 (lex_env_p));
  FUNC4 (name_p != NULL);

  if (FUNC7 (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE)
  {
    ecma_property_t *property_p = FUNC5 (lex_env_p, name_p);

    FUNC4 (property_p != NULL
                  && FUNC2 (*property_p) == ECMA_PROPERTY_TYPE_NAMEDDATA);

    if (FUNC9 (*property_p))
    {
      FUNC11 (lex_env_p, FUNC3 (property_p), value);
    }
    else if (is_strict)
    {
      return FUNC13 (FUNC0 ("Binding cannot be set."));
    }
  }
  else
  {
    FUNC4 (FUNC7 (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND);

    ecma_object_t *binding_obj_p = FUNC6 (lex_env_p);

    ecma_value_t completion = FUNC12 (binding_obj_p,
                                                  name_p,
                                                  value,
                                                  is_strict);

    if (FUNC1 (completion))
    {
      return completion;
    }

    FUNC4 (FUNC10 (completion));
  }

  return ECMA_VALUE_EMPTY;
}