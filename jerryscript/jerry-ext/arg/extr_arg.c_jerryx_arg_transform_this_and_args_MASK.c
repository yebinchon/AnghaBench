#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* func ) (TYPE_2__*,TYPE_1__ const*) ;} ;
typedef  TYPE_1__ jerryx_arg_t ;
struct TYPE_8__ {int js_arg_cnt; int /*<<< orphan*/  js_arg_idx; int /*<<< orphan*/  const* js_arg_p; } ;
typedef  TYPE_2__ jerryx_arg_js_iterator_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  scalar_t__ jerry_length_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_ERROR_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,scalar_t__ const,TYPE_1__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__ const*) ; 

jerry_value_t
FUNC6 (const jerry_value_t this_val, /**< the this_val for the external function */
                                    const jerry_value_t *js_arg_p, /**< points to the array with JS arguments */
                                    const jerry_length_t js_arg_cnt, /**< the count of the `js_arg_p` array */
                                    const jerryx_arg_t *c_arg_p, /**< points to the array of transformation steps */
                                    jerry_length_t c_arg_cnt) /**< the count of the `c_arg_p` array */
{
  if (c_arg_cnt == 0)
  {
    return FUNC1 ();
  }

  jerryx_arg_js_iterator_t iterator =
  {
    .js_arg_p = &this_val,
    .js_arg_cnt = 1,
    .js_arg_idx = 0
  };

  jerry_value_t ret = c_arg_p->func (&iterator, c_arg_p);

  if (FUNC3 (ret))
  {
    FUNC2 (ret);

    return FUNC0 (JERRY_ERROR_TYPE, (jerry_char_t *) "'this' validation failed.");
  }

  return FUNC4 (js_arg_p, js_arg_cnt, c_arg_p + 1, c_arg_cnt - 1);
}