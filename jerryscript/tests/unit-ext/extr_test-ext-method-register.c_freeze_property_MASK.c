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
typedef  int /*<<< orphan*/  jerry_value_t ;
struct TYPE_5__ {int is_configurable_defined; int is_configurable; } ;
typedef  TYPE_1__ jerry_property_descriptor_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (jerry_value_t target_obj, /**< target object */
                 const char *target_prop) /**< target property name */
{
  // "freeze" property
  jerry_property_descriptor_t prop_desc;
  FUNC4 (&prop_desc);
  prop_desc.is_configurable_defined = true;
  prop_desc.is_configurable = false;

  jerry_value_t prop_name = FUNC1 ((const jerry_char_t *) target_prop);
  jerry_value_t return_value = FUNC2 (target_obj, prop_name, &prop_desc);
  FUNC0 (FUNC6 (return_value));
  FUNC5 (return_value);
  FUNC5 (prop_name);

  FUNC3 (&prop_desc);
}