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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static jerry_value_t
FUNC3 (const jerry_value_t obj_val, /**< object value */
              const char *str_p, /**< property name */
              const jerry_value_t val) /**< value to set */
{
  jerry_value_t prop_name_val = FUNC0 ((const jerry_char_t *) str_p);
  jerry_value_t ret_val = FUNC2 (obj_val, prop_name_val, val);
  FUNC1 (prop_name_val);
  return ret_val;
}