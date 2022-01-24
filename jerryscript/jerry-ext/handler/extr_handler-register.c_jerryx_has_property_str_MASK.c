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
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bool
FUNC5 (const jerry_value_t target_object, /**< target object */
                         const char *name) /**< property name */
{
  bool has_property = false;

  jerry_value_t prop_name = FUNC0 ((const jerry_char_t *) name);
  jerry_value_t has_prop_val = FUNC2 (target_object, prop_name);

  if (!FUNC4 (has_prop_val))
  {
    has_property = FUNC1 (has_prop_val);
  }

  FUNC3 (has_prop_val);
  FUNC3 (prop_name);

  return has_property;
}