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
 scalar_t__ ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ; 
 int /*<<< orphan*/  ECMA_PROPERTY_FIXED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5 (ecma_object_t *lex_env_p, /**< lexical environment */
                                  ecma_string_t *name_p, /**< argument N */
                                  ecma_value_t value) /**< argument V */
{
  FUNC0 (lex_env_p != NULL
                && FUNC4 (lex_env_p));
  FUNC0 (FUNC3 (lex_env_p) == ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE);

  /*
   * Warning:
   *         Whether immutable bindings are deletable seems not to be defined by ECMA v5.
   */
  ecma_property_value_t *prop_value_p = FUNC2 (lex_env_p,
                                                                         name_p,
                                                                         ECMA_PROPERTY_FIXED,
                                                                         NULL);

  prop_value_p->value = FUNC1 (value);
}