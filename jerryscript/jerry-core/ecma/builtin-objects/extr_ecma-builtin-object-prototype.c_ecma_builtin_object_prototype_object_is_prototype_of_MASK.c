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
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ecma_value_t
FUNC6 (ecma_object_t *obj_p, /**< this argument */
                                                      ecma_value_t arg) /**< routine's first argument */
{
  /* 3. Compare prototype to object */
  ecma_value_t v_obj_value = FUNC5 (arg);

  if (FUNC0 (v_obj_value))
  {
    return v_obj_value;
  }

  ecma_object_t *v_obj_p = FUNC2 (v_obj_value);

  ecma_value_t ret_value = FUNC3 (FUNC4 (obj_p, v_obj_p));

  FUNC1 (v_obj_p);

  return ret_value;
}