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
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  int /*<<< orphan*/  ecma_property_descriptor_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECMA_VALUE_UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ecma_value_t
FUNC4 (ecma_object_t *obj_p, /**< routine's first argument */
                                                        ecma_string_t *name_str_p) /**< routine's second argument */
{
  /* 3. */
  ecma_property_descriptor_t prop_desc;

  if (FUNC3 (obj_p, name_str_p, &prop_desc))
  {
    /* 4. */
    ecma_object_t *desc_obj_p = FUNC2 (&prop_desc);

    FUNC0 (&prop_desc);

    return FUNC1 (desc_obj_p);
  }

  return ECMA_VALUE_UNDEFINED;
}