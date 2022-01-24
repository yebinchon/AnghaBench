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
typedef  size_t uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  bytes_per_element; int /*<<< orphan*/  element_count; int /*<<< orphan*/  typedarray_type; int /*<<< orphan*/ * constructor_name; } ;
typedef  TYPE_1__ test_entry_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (test_entry_t test_entries[]) /**< test cases */
{
  jerry_value_t global_obj_val = FUNC5 ();

  for (uint32_t i = 0; test_entries[i].constructor_name != NULL; i++)
  {
    /* Create TypedArray via construct call */
    {
      jerry_value_t prop_name = FUNC3 ((const jerry_char_t *) test_entries[i].constructor_name);
      jerry_value_t prop_value = FUNC6 (global_obj_val, prop_name);
      FUNC0 (!FUNC8 (prop_value));
      jerry_value_t length_arg = FUNC2 (test_entries[i].element_count);

      jerry_value_t typedarray = FUNC1 (prop_value, &length_arg, 1);

      FUNC7 (prop_name);
      FUNC7 (prop_value);
      FUNC7 (length_arg);

      FUNC9 (typedarray,
                            test_entries[i].typedarray_type,
                            test_entries[i].element_count,
                            test_entries[i].bytes_per_element);
      FUNC7 (typedarray);
    }

    /* Create TypedArray via api call */
    {
      jerry_value_t typedarray = FUNC4 (test_entries[i].typedarray_type,
                                                          test_entries[i].element_count);
      FUNC9 (typedarray,
                            test_entries[i].typedarray_type,
                            test_entries[i].element_count,
                            test_entries[i].bytes_per_element);
      FUNC7 (typedarray);
    }
  }

  FUNC7 (global_obj_val);
}