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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECMA_VALUE_EMPTY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_var_value ; 

ecma_value_t
FUNC3 (ecma_value_t left_value, /**< left value */
                        bool is_plus) /**< unary plus flag */
{
  ecma_value_t ret_value = ECMA_VALUE_EMPTY;

  FUNC1 (num_var_value,
                               left_value,
                               ret_value);

  ret_value = FUNC2 (is_plus ? num_var_value : -num_var_value);

  FUNC0 (num_var_value);

  return ret_value;
}