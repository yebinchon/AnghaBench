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
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ; 
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND ; 
 int /*<<< orphan*/  ECMA_VALUE_UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

ecma_value_t
FUNC6 (ecma_object_t *lex_env_p) /**< lexical environment */
{
  FUNC0 (lex_env_p != NULL
                && FUNC3 (lex_env_p));

  if (FUNC2 (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE)
  {
    return ECMA_VALUE_UNDEFINED;
  }
  else
  {
    FUNC0 (FUNC2 (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND);

    ecma_object_t *binding_obj_p = FUNC1 (lex_env_p);
    FUNC5 (binding_obj_p);

    return FUNC4 (binding_obj_p);
  }
}