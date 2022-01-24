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
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ecma_value_t
FUNC4 (ecma_value_t left_value, /**< left value */
                 ecma_value_t right_value) /**< right value */
{
  FUNC1 (!FUNC0 (left_value)
                && !FUNC0 (right_value));

  ecma_value_t compare_result = FUNC3 (left_value, right_value);

  FUNC1 (FUNC2 (compare_result)
                || FUNC0 (compare_result));

  return compare_result;
}