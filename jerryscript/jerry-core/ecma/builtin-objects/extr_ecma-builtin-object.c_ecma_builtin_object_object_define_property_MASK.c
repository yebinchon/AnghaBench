#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ecma_property_descriptor_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECMA_PROP_IS_THROW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

ecma_value_t
FUNC7 (ecma_object_t *obj_p, /**< routine's first argument */
                                            ecma_string_t *name_str_p, /**< routine's second argument */
                                            ecma_value_t arg3) /**< routine's third argument */
{
  ecma_property_descriptor_t prop_desc;

  ecma_value_t conv_result = FUNC5 (arg3, &prop_desc);

  if (FUNC0 (conv_result))
  {
    return conv_result;
  }

  prop_desc.flags |= ECMA_PROP_IS_THROW;

  ecma_value_t define_own_prop_ret = FUNC4 (obj_p,
                                                                         name_str_p,
                                                                         &prop_desc);

  FUNC1 (&prop_desc);
  FUNC2 (conv_result);

  if (FUNC0 (define_own_prop_ret))
  {
    return define_own_prop_ret;
  }

  FUNC6 (obj_p);
  FUNC2 (define_own_prop_ret);

  return FUNC3 (obj_p);
}