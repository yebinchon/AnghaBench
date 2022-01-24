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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECMA_VALUE_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

ecma_value_t
FUNC6 (ecma_value_t left_value, /**< left value */
                 ecma_value_t right_value, /**< right value */
                 bool left_first, /**< 'LeftFirst' flag */
                 bool is_invert) /**< is invert */
{
  FUNC1 (!FUNC0 (left_value)
                && !FUNC0 (right_value));

  ecma_value_t ret_value = FUNC5 (left_value, right_value, left_first);

  if (FUNC0 (ret_value))
  {
    return ret_value;
  }

  if (FUNC4 (ret_value))
  {
    ret_value = ECMA_VALUE_FALSE;
  }
  else
  {
    FUNC1 (FUNC3 (ret_value));

    if (is_invert)
    {
      ret_value = FUNC2 (ret_value);
    }
  }

  return ret_value;
}