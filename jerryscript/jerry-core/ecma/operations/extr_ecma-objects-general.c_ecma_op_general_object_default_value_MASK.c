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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lit_magic_string_id_t ;
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  scalar_t__ ecma_preferred_type_hint_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ECMA_PREFERRED_TYPE_NO ; 
 scalar_t__ ECMA_PREFERRED_TYPE_NUMBER ; 
 scalar_t__ ECMA_PREFERRED_TYPE_STRING ; 
 int /*<<< orphan*/  ECMA_VALUE_EMPTY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_DATE_UL ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_TO_STRING_UL ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_VALUE_OF_UL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

ecma_value_t
FUNC14 (ecma_object_t *obj_p, /**< the object */
                                      ecma_preferred_type_hint_t hint) /**< hint on preferred result type */
{
  FUNC2 (obj_p != NULL
                && !FUNC5 (obj_p));

  if (hint == ECMA_PREFERRED_TYPE_NO)
  {
    if (FUNC9 (obj_p, LIT_MAGIC_STRING_DATE_UL))
    {
      hint = ECMA_PREFERRED_TYPE_STRING;
    }
    else
    {
      hint = ECMA_PREFERRED_TYPE_NUMBER;
    }
  }

  for (uint32_t i = 1; i <= 2; i++)
  {
    lit_magic_string_id_t function_name_id;

    if ((i == 1 && hint == ECMA_PREFERRED_TYPE_STRING)
        || (i == 2 && hint == ECMA_PREFERRED_TYPE_NUMBER))
    {
      function_name_id = LIT_MAGIC_STRING_TO_STRING_UL;
    }
    else
    {
      function_name_id = LIT_MAGIC_STRING_VALUE_OF_UL;
    }

    ecma_value_t function_value = FUNC12 (obj_p, function_name_id);

    if (FUNC1 (function_value))
    {
      return function_value;
    }

    ecma_value_t call_completion = ECMA_VALUE_EMPTY;

    if (FUNC11 (function_value))
    {
      ecma_object_t *func_obj_p = FUNC4 (function_value);

      call_completion = FUNC10 (func_obj_p,
                                               FUNC8 (obj_p),
                                               NULL,
                                               0);
    }

    FUNC3 (function_value);

    if (FUNC1 (call_completion)
        || (!FUNC6 (call_completion)
           && !FUNC7 (call_completion)))
    {
      return call_completion;
    }

    FUNC3 (call_completion);
  }

  return FUNC13 (FUNC0 ("Invalid argument type in [[DefaultValue]]."));
}