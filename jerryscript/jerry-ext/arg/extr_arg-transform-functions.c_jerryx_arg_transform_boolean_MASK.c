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
struct TYPE_3__ {int* dest; } ;
typedef  TYPE_1__ jerryx_arg_t ;
typedef  int /*<<< orphan*/  jerryx_arg_js_iterator_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

jerry_value_t
FUNC3 (jerryx_arg_js_iterator_t *js_arg_iter_p, /**< available JS args */
                              const jerryx_arg_t *c_arg_p) /**< the native arg */
{
  jerry_value_t js_arg = FUNC2 (js_arg_iter_p);

  bool to_boolean = FUNC1 (js_arg);

  bool *dest = c_arg_p->dest;
  *dest = to_boolean;

  return FUNC0 ();
}