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
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  int /*<<< orphan*/  ecma_property_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;
typedef  scalar_t__ ecma_lexical_environment_type_t ;

/* Variables and functions */
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ; 
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool
FUNC6 (ecma_object_t *lex_env_p, /**< lexical environment */
                     ecma_string_t *name_p) /**< argument N */
{
  FUNC0 (lex_env_p != NULL
                && FUNC4 (lex_env_p));

  ecma_lexical_environment_type_t lex_env_type = FUNC3 (lex_env_p);

  if (lex_env_type == ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE)
  {
    ecma_property_t *property_p = FUNC1 (lex_env_p, name_p);

    return (property_p != NULL);
  }
  else
  {
    FUNC0 (lex_env_type == ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND);

    ecma_object_t *binding_obj_p = FUNC2 (lex_env_p);

    return FUNC5 (binding_obj_p, name_p);
  }
}