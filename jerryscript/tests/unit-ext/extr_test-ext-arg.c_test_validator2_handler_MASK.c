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
struct TYPE_3__ {int x; } ;
typedef  TYPE_1__ my_type_a_t ;
typedef  int /*<<< orphan*/  jerryx_arg_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_length_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  JERRYX_ARG_REQUIRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_custom_transform ; 
 TYPE_1__ my_thing_a ; 
 int /*<<< orphan*/  thing_a_info ; 
 scalar_t__ validator2_count ; 

__attribute__((used)) static jerry_value_t
FUNC9 (const jerry_value_t func_obj_val, /**< function object */
                         const jerry_value_t this_val, /**< this value */
                         const jerry_value_t args_p[], /**< arguments list */
                         const jerry_length_t args_cnt) /**< arguments length */
{
  FUNC1 (func_obj_val);

  my_type_a_t *thing_p;

  jerryx_arg_t mapping[] =
  {
    /* this should has native pointer, whose type is thing_a_info */
    FUNC7 ((void **) &thing_p, &thing_a_info, JERRYX_ARG_REQUIRED),
    /* custom tranform function */
    FUNC6 (NULL, 5, my_custom_transform)
  };

  jerry_value_t is_ok = FUNC8 (this_val,
                                                            args_p,
                                                            args_cnt,
                                                            mapping,
                                                            FUNC0 (mapping));

  if (validator2_count == 0)
  {
    FUNC2 (!FUNC5 (is_ok));
    FUNC2 (thing_p == &my_thing_a);
    FUNC2 (thing_p->x == 1);
  }
  else
  {
    FUNC2 (FUNC5 (is_ok));
  }

  FUNC4 (is_ok);
  validator2_count++;

  return FUNC3 ();
}