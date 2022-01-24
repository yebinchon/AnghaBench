#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;
struct TYPE_3__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ ecma_property_value_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ; 
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND ; 
 int /*<<< orphan*/  ECMA_VALUE_UNDEFINED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

ecma_value_t
FUNC10 (ecma_object_t *lex_env_p, /**< lexical environment */
                           ecma_string_t *name_p, /**< argument N */
                           bool is_strict) /**< argument S */
{
  FUNC1 (lex_env_p != NULL
                && FUNC6 (lex_env_p));
  FUNC1 (name_p != NULL);

  if (FUNC4 (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE)
  {
    ecma_property_value_t *prop_value_p = FUNC5 (lex_env_p, name_p);

    return FUNC2 (prop_value_p->value);
  }
  else
  {
    FUNC1 (FUNC4 (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND);

    ecma_object_t *binding_obj_p = FUNC3 (lex_env_p);

    ecma_value_t result = FUNC8 (binding_obj_p, name_p);

    if (!FUNC7 (result))
    {
      if (is_strict)
      {
        result = FUNC9 (FUNC0 ("Binding does not exist or is uninitialised."));
      }
      else
      {
        result = ECMA_VALUE_UNDEFINED;
      }
    }

    return result;
  }
}