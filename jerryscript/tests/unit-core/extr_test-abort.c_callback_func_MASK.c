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
typedef  int /*<<< orphan*/  const* const* const* const* const* const* const* const* jerry_value_t ;
typedef  int /*<<< orphan*/  const* const* const* const* const* const* const* const* const* jerry_length_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const* const* const* const* const* const* const* const* const* const) ; 
 int /*<<< orphan*/  const* const* const* const* const* const******* FUNC1 (int /*<<< orphan*/  const* const* const* const* const* const* const* const*,int) ; 
 int /*<<< orphan*/  const* const* const* const* const* const******* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static jerry_value_t
FUNC3 (const jerry_value_t function_obj,
               const jerry_value_t this_val,
               const jerry_value_t args_p[],
               const jerry_length_t args_count)
{
  FUNC0 (&function_obj);
  FUNC0 (&this_val);
  FUNC0 (args_p);
  FUNC0 (args_count);

  jerry_value_t value = FUNC2 ((jerry_char_t *) "Abort run!");
  value = FUNC1 (value, true);
  return value;
}