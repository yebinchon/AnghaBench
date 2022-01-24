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
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  scalar_t__ ecma_property_t ;
struct TYPE_3__ {int /*<<< orphan*/  value_p; } ;
typedef  TYPE_1__ ecma_property_ref_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ECMA_OBJECT_TYPE_ARRAY ; 
 int /*<<< orphan*/  ECMA_PROPERTY_GET_NO_OPTIONS ; 
 scalar_t__ ECMA_PROPERTY_TYPE_NOT_FOUND ; 
 scalar_t__ ECMA_PROPERTY_TYPE_NOT_FOUND_AND_STOP ; 
 int /*<<< orphan*/  ECMA_VALUE_FALSE ; 
 int /*<<< orphan*/  ECMA_VALUE_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

ecma_value_t
FUNC9 (ecma_object_t *obj_p, /**< the object */
                               ecma_string_t *property_name_p, /**< property name */
                               bool is_throw) /**< flag that controls failure handling */
{
  FUNC1 (obj_p != NULL
                && !FUNC5 (obj_p));
  FUNC1 (property_name_p != NULL);

  /* 1. */
  ecma_property_ref_t property_ref;

  ecma_property_t property = FUNC7 (obj_p,
                                                              property_name_p,
                                                              &property_ref,
                                                              ECMA_PROPERTY_GET_NO_OPTIONS);

  /* 2. */
  if (property == ECMA_PROPERTY_TYPE_NOT_FOUND || property == ECMA_PROPERTY_TYPE_NOT_FOUND_AND_STOP)
  {
    return ECMA_VALUE_TRUE;
  }

  /* 3. */
  if (FUNC6 (property))
  {
    if (FUNC4 (obj_p) == ECMA_OBJECT_TYPE_ARRAY)
    {
      FUNC2 (obj_p, property_name_p, property_ref.value_p);
    }
    else
    {
      /* a. */
      FUNC3 (obj_p, property_ref.value_p);
    }

    /* b. */
    return ECMA_VALUE_TRUE;
  }

  /* 4. */
  if (is_throw)
  {
    return FUNC8 (FUNC0 ("Expected a configurable property."));
  }

  /* 5. */
  return ECMA_VALUE_FALSE;
}