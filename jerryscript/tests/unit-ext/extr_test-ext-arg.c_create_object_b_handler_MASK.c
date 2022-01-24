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
typedef  int /*<<< orphan*/  const* const* const* const* jerry_value_t ;
typedef  int /*<<< orphan*/  const* const* const* const* const* jerry_length_t ;
struct TYPE_3__ {int x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const* const* const* const* const* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* const* const* const* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const* const* const* const* const,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const* const* const* const* const) ; 
 TYPE_1__ my_thing_b ; 
 int /*<<< orphan*/  thing_b_info ; 

__attribute__((used)) static jerry_value_t
FUNC5 (const jerry_value_t func_obj_val, /**< function object */
                         const jerry_value_t this_val, /**< this value */
                         const jerry_value_t args_p[], /**< arguments list */
                         const jerry_length_t args_cnt) /**< arguments length */
{
  FUNC0 (&func_obj_val);
  FUNC0 (args_p);
  FUNC0 (args_cnt);

  FUNC1 (FUNC4 (this_val));

  my_thing_b.x = false;
  FUNC3 (this_val,
                                   &my_thing_b,
                                   &thing_b_info);

  return FUNC2 (true);
}