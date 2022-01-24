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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  jerryx_register_result ;
struct TYPE_3__ {int /*<<< orphan*/  value; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ jerryx_property_entry ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

jerryx_register_result
FUNC6 (const jerry_value_t target_object, /**< target object */
                       const jerryx_property_entry entries[]) /**< array of method entries */
{
#define JERRYX_SET_PROPERTIES_RESULT(VALUE, IDX) ((jerryx_register_result) { VALUE, IDX })
  uint32_t idx = 0;
  for (; ((entries + idx) != NULL) && (entries[idx].name != NULL); idx++)
  {
    const jerryx_property_entry *entry = &entries[idx];

    jerry_value_t prop_name = FUNC1 ((const jerry_char_t *) entry->name);
    jerry_value_t result = FUNC4 (target_object, prop_name, entry->value);

    FUNC3 (prop_name);

    // By API definition:
    // The jerry_set_property returns TRUE if there is no problem
    // and error object if there is any problem.
    // Thus there is no need to check if the boolean value is false or not.
    if (!FUNC5 (result))
    {
      return JERRYX_SET_PROPERTIES_RESULT (result, idx);
    }

    FUNC3 (entry->value);
    FUNC3 (result);
  }

  return JERRYX_SET_PROPERTIES_RESULT (FUNC2 (), idx);
#undef JERRYX_SET_PROPERTIES_RESULT
}