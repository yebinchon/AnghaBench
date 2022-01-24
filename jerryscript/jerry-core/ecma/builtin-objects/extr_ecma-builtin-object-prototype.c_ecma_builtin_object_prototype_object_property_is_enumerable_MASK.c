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
typedef  scalar_t__ ecma_property_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECMA_PROPERTY_GET_NO_OPTIONS ; 
 scalar_t__ ECMA_PROPERTY_TYPE_NOT_FOUND ; 
 scalar_t__ ECMA_PROPERTY_TYPE_NOT_FOUND_AND_STOP ; 
 int /*<<< orphan*/  ECMA_VALUE_FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ecma_value_t
FUNC3 (ecma_object_t *obj_p, /**< this argument */
                                                             ecma_string_t *prop_name_p) /**< first argument */
{
  /* 3. */
  ecma_property_t property = FUNC2 (obj_p,
                                                              prop_name_p,
                                                              NULL,
                                                              ECMA_PROPERTY_GET_NO_OPTIONS);

  /* 4. */
  if (property != ECMA_PROPERTY_TYPE_NOT_FOUND && property != ECMA_PROPERTY_TYPE_NOT_FOUND_AND_STOP)
  {
    return FUNC1 (FUNC0 (property));
  }

  return ECMA_VALUE_FALSE;
}