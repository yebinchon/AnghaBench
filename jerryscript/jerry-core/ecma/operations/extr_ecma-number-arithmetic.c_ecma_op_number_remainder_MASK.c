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
typedef  int /*<<< orphan*/  ecma_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

ecma_number_t
FUNC5 (ecma_number_t left_num, /**< left operand */
                          ecma_number_t right_num) /**< right operand */
{
  if (FUNC2 (left_num)
      || FUNC2 (right_num)
      || FUNC1 (left_num)
      || FUNC3 (right_num))
  {
    return FUNC4 ();
  }
  else if (FUNC1 (right_num)
           || (FUNC3 (left_num)
               && !FUNC3 (right_num)))
  {
    return left_num;
  }

  return FUNC0 (left_num, right_num);
}