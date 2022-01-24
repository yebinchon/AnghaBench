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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_TO_LOCALE_STRING_UL ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING__EMPTY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

ecma_string_t *
FUNC15 (ecma_object_t *obj_p, /**< this object */
                                                   uint32_t index) /**< array index */
{
  ecma_value_t index_value = FUNC11 (obj_p, index);

  if (FUNC1 (index_value))
  {
    return NULL;
  }

  if (FUNC7 (index_value) || FUNC6 (index_value))
  {
    return FUNC4 (LIT_MAGIC_STRING__EMPTY);
  }

  ecma_value_t index_obj_value = FUNC12 (index_value);


  if (FUNC1 (index_obj_value))
  {
    FUNC3 (index_value);
    return NULL;
  }

  ecma_string_t *ret_string_p = NULL;
  ecma_object_t *index_obj_p = FUNC5 (index_obj_value);
  ecma_value_t to_locale_value = FUNC10 (index_obj_p, LIT_MAGIC_STRING_TO_LOCALE_STRING_UL);

  if (FUNC1 (to_locale_value))
  {
    goto cleanup;
  }

  if (!FUNC9 (to_locale_value))
  {
    FUNC3 (to_locale_value);
    FUNC14 (FUNC0 ("'toLocaleString' is missing or not a function."));
    goto cleanup;
  }

  ecma_object_t *locale_func_obj_p = FUNC5 (to_locale_value);
  ecma_value_t call_value = FUNC8 (locale_func_obj_p,
                                                   index_obj_value,
                                                   NULL,
                                                   0);
  FUNC2 (locale_func_obj_p);

  if (FUNC1 (call_value))
  {
    goto cleanup;
  }

  ret_string_p = FUNC13 (call_value);
  FUNC3 (call_value);

cleanup:
  FUNC2 (index_obj_p);
  FUNC3 (index_value);

  return ret_string_p;
}