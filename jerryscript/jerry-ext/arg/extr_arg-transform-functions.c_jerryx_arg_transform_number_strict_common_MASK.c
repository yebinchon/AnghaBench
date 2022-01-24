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
typedef  int /*<<< orphan*/  jerryx_arg_js_iterator_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_ERROR_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static jerry_value_t
FUNC5 (jerryx_arg_js_iterator_t *js_arg_iter_p, /**< available JS args */
                                           double *number_p) /**< [out] the number in JS arg */
{
  jerry_value_t js_arg = FUNC4 (js_arg_iter_p);

  if (!FUNC3 (js_arg))
  {
    return FUNC0 (JERRY_ERROR_TYPE,
                               (jerry_char_t *) "It is not a number.");
  }

  *number_p = FUNC2 (js_arg);

  return FUNC1 ();
}