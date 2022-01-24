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
typedef  int /*<<< orphan*/  jerryx_arg_t ;
typedef  int /*<<< orphan*/  jerryx_arg_js_iterator_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_ERROR_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static jerry_value_t
FUNC4 (jerryx_arg_js_iterator_t *js_arg_iter_p, /**< available JS args */
                                           const jerryx_arg_t *c_arg_p, /**< the native arg */
                                           bool is_utf8) /**< whether it is a UTF-8 string */
{
  jerry_value_t js_arg = FUNC2 (js_arg_iter_p);

  if (!FUNC1 (js_arg))
  {
    return FUNC0 (JERRY_ERROR_TYPE,
                               (jerry_char_t *) "It is not a string.");
  }

  return FUNC3 (js_arg, c_arg_p, is_utf8);
}