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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static jerry_value_t
FUNC3 (jerry_value_t cache, /**< cache to which to add the module */
                            jerry_value_t module_name, /**< key at which to cache the module */
                            jerry_value_t module) /**< the module to cache */
{
  jerry_value_t ret = FUNC1 (cache, module_name, module);

  if (FUNC2 (ret))
  {
    FUNC0 (module);
  }
  else
  {
    FUNC0 (ret);
    ret = module;
  }

  return ret;
}