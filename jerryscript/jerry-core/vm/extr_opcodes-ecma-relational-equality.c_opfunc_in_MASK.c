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
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ECMA_VALUE_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

ecma_value_t
FUNC9 (ecma_value_t left_value, /**< left value */
           ecma_value_t right_value) /**< right value */
{
  if (!FUNC4 (right_value))
  {
    return FUNC8 (FUNC0 ("Expected an object in 'in' check."));
  }

  ecma_string_t *property_name_p = FUNC7 (left_value);

  if (FUNC1 (property_name_p == NULL))
  {
    return ECMA_VALUE_ERROR;
  }

  ecma_object_t *right_value_obj_p = FUNC3 (right_value);
  ecma_value_t result = FUNC5 (FUNC6 (right_value_obj_p,
                                                                              property_name_p));
  FUNC2 (property_name_p);
  return result;
}