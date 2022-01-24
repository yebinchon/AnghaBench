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
typedef  int /*<<< orphan*/  ecma_number_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECMA_NUMBER_ZERO ; 
 int /*<<< orphan*/  ECMA_VALUE_EMPTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

ecma_value_t
FUNC8 (ecma_value_t value, /**< ecma value*/
                    ecma_number_t *number_p) /**< [out] ecma number */
{
  if (FUNC0 (value))
  {
    return value;
  }

  /* 1 */
  ecma_value_t to_number = FUNC1 (value, number_p);

  /* 2 */
  if (FUNC0 (to_number))
  {
    return to_number;
  }

  ecma_number_t number = *number_p;

  /* 3 */
  if (FUNC3 (number))
  {
    *number_p = ECMA_NUMBER_ZERO;
    return ECMA_VALUE_EMPTY;
  }

  /* 4 */
  if (FUNC5 (number) || FUNC2 (number))
  {
    return ECMA_VALUE_EMPTY;
  }

  ecma_number_t floor_fabs = FUNC7 (FUNC6 (number));

  /* 5 */
  *number_p = FUNC4 (number) ? -floor_fabs : floor_fabs;
  return ECMA_VALUE_EMPTY;
}