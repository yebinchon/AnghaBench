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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_TO_STRING_UL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ecma_value_t
FUNC10 (ecma_object_t *obj_p) /**< this argument */
{
  /* 2. */
  ecma_value_t to_string_val = FUNC8 (obj_p, LIT_MAGIC_STRING_TO_STRING_UL);

  if (FUNC1 (to_string_val))
  {
    return to_string_val;
  }

  /* 3. */
  if (!FUNC7 (to_string_val))
  {
    FUNC3 (to_string_val);
    return FUNC9 (FUNC0 ("'toString is missing or not a function.'"));
  }

  /* 4. */
  ecma_object_t *to_string_func_obj_p = FUNC4 (to_string_val);
  ecma_value_t ret_value = FUNC6 (to_string_func_obj_p, FUNC5 (obj_p), NULL, 0);

  FUNC2 (to_string_func_obj_p);

  return ret_value;
}