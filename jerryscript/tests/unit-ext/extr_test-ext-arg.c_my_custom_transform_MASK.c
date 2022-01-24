#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ extra_info; } ;
typedef  TYPE_1__ jerryx_arg_t ;
typedef  int /*<<< orphan*/  jerryx_arg_js_iterator_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_ERROR_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static jerry_value_t
FUNC7 (jerryx_arg_js_iterator_t *js_arg_iter_p, /**< available JS args */
                     const jerryx_arg_t *c_arg_p) /**< the native arg */
{
  jerry_value_t js_arg = FUNC6 (js_arg_iter_p);
  jerry_value_t to_number = FUNC5 (js_arg);

  if (FUNC4 (to_number))
  {
    FUNC3 (to_number);

    return FUNC0 (JERRY_ERROR_TYPE,
                               (jerry_char_t *) "It can not be converted to a number.");
  }

  int expected_num = (int) c_arg_p->extra_info;
  int get_num = (int) FUNC2 (to_number);

  if (get_num != expected_num)
  {
    return FUNC0 (JERRY_ERROR_TYPE,
                               (jerry_char_t *) "Number value is not expected.");
  }

  return FUNC1 ();
}