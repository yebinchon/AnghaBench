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
typedef  int /*<<< orphan*/  jerry_value_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (jerry_value_t cache, /**< cache from which to attempt to retrieve the module by name */
                           jerry_value_t module_name, /**< JerryScript string value holding the module name */
                           jerry_value_t *result) /**< Resulting value */
{
  bool ret = false;

  /* Check if the cache has the module. */
  jerry_value_t js_has_property = FUNC2 (cache, module_name);

  /* If we succeed in getting an answer, we examine the answer. */
  if (!FUNC4 (js_has_property))
  {
    bool has_property = FUNC0 (js_has_property);

    /* If the module is indeed in the cache, we return it. */
    if (has_property)
    {
      if (result != NULL)
      {
        (*result) = FUNC1 (cache, module_name);
      }
      ret = true;
    }
  }

  FUNC3 (js_has_property);

  return ret;
}