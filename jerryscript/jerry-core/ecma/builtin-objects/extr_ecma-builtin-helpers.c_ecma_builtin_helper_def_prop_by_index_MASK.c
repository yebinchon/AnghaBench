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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 scalar_t__ ECMA_DIRECT_STRING_MAX_IMM ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 

ecma_value_t
FUNC5 (ecma_object_t *obj_p, /**< object */
                                       uint32_t index, /**< property index */
                                       ecma_value_t value, /**< value */
                                       uint32_t opts) /**< any combination of ecma_property_flag_t bits */
{
  if (FUNC1 (index <= ECMA_DIRECT_STRING_MAX_IMM))
  {
    return FUNC2 (obj_p,
                                         FUNC0 (index),
                                         value,
                                         opts);
  }

  ecma_string_t *index_str_p = FUNC4 (index);
  ecma_value_t ret_value = FUNC2 (obj_p,
                                                         index_str_p,
                                                         value,
                                                         opts);
  FUNC3 (index_str_p);

  return ret_value;
}