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
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  int /*<<< orphan*/  ecma_standard_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ ecma_property_value_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECMA_PROPERTY_CONFIGURABLE_WRITABLE ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_MESSAGE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

ecma_object_t *
FUNC5 (ecma_standard_error_t error_type, /**< native error type */
                                      ecma_string_t *message_string_p) /**< message string */
{
  ecma_object_t *new_error_obj_p = FUNC3 (error_type);

  ecma_property_value_t *prop_value_p;
  prop_value_p = FUNC0 (new_error_obj_p,
                                                  FUNC1 (LIT_MAGIC_STRING_MESSAGE),
                                                  ECMA_PROPERTY_CONFIGURABLE_WRITABLE,
                                                  NULL);

  FUNC4 (message_string_p);
  prop_value_p->value = FUNC2 (message_string_p);

  return new_error_obj_p;
}