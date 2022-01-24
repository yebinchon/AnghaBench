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
struct TYPE_3__ {int /*<<< orphan*/  extra_info; scalar_t__ dest; } ;
typedef  TYPE_1__ jerryx_arg_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  size_t jerry_size_t ;
typedef  scalar_t__ jerry_length_t ;
typedef  char jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_ERROR_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static jerry_value_t
FUNC6 (jerry_value_t js_arg, /**< JS arg */
                                            const jerryx_arg_t *c_arg_p, /**< native arg */
                                            bool is_utf8) /**< whether it is UTF-8 string */
{
  jerry_char_t *target_p = (jerry_char_t *) c_arg_p->dest;
  jerry_size_t target_buf_size = (jerry_size_t) c_arg_p->extra_info;
  jerry_size_t size;
  jerry_length_t len;

  if (!is_utf8)
  {
    size = FUNC4 (js_arg,
                                        target_p,
                                        target_buf_size);
    len = FUNC2 (js_arg);
  }
  else
  {
    size = FUNC5 (js_arg,
                                             target_p,
                                             target_buf_size);
    len = FUNC3 (js_arg);
  }

  if ((size == target_buf_size) || (size == 0 && len != 0))
  {
    return FUNC0 (JERRY_ERROR_TYPE,
                               (jerry_char_t *) "Buffer size is not large enough.");
  }

  target_p[size] = '\0';

  return FUNC1 ();
}