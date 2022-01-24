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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECMA_PREFERRED_TYPE_NO ; 
 int /*<<< orphan*/  ECMA_VALUE_EMPTY ; 
 int /*<<< orphan*/  ECMA_VALUE_ERROR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ num_left ; 
 scalar_t__ num_right ; 

ecma_value_t
FUNC14 (ecma_value_t left_value, /**< left value */
                 ecma_value_t right_value) /**< right value */
{
  bool free_left_value = false;
  bool free_right_value = false;

  if (FUNC8 (left_value))
  {
    ecma_object_t *obj_p = FUNC7 (left_value);
    left_value = FUNC12 (obj_p, ECMA_PREFERRED_TYPE_NO);
    free_left_value = true;

    if (FUNC0 (left_value))
    {
      return left_value;
    }
  }

  if (FUNC8 (right_value))
  {
    ecma_object_t *obj_p = FUNC7 (right_value);
    right_value = FUNC12 (obj_p, ECMA_PREFERRED_TYPE_NO);
    free_right_value = true;

    if (FUNC0 (right_value))
    {
      if (free_left_value)
      {
        FUNC6 (left_value);
      }
      return right_value;
    }
  }

  ecma_value_t ret_value = ECMA_VALUE_EMPTY;

  if (FUNC9 (left_value)
      || FUNC9 (right_value))
  {
    ecma_string_t *string1_p = FUNC13 (left_value);

    if (FUNC3 (string1_p == NULL))
    {
      if (free_left_value)
      {
        FUNC6 (left_value);
      }
      if (free_right_value)
      {
        FUNC6 (right_value);
      }
      return ECMA_VALUE_ERROR;
    }

    ecma_string_t *string2_p = FUNC13 (right_value);

    if (FUNC3 (string2_p == NULL))
    {
      if (free_right_value)
      {
        FUNC6 (right_value);
      }
      if (free_left_value)
      {
        FUNC6 (left_value);
      }
      FUNC5 (string1_p);
      return ECMA_VALUE_ERROR;
    }

    string1_p = FUNC4 (string1_p, string2_p);
    ret_value = FUNC11 (string1_p);

    FUNC5 (string2_p);
  }
  else
  {
    FUNC2 (num_left, left_value, ret_value);
    FUNC2 (num_right, right_value, ret_value);

    ret_value = FUNC10 (num_left + num_right);

    FUNC1 (num_right);
    FUNC1 (num_left);
  }

  if (free_left_value)
  {
    FUNC6 (left_value);
  }

  if (free_right_value)
  {
    FUNC6 (right_value);
  }

  return ret_value;
}