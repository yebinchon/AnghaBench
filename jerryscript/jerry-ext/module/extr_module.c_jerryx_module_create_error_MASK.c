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
typedef  int /*<<< orphan*/  jerry_error_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  module_name_property_name ; 

__attribute__((used)) static jerry_value_t
FUNC5 (jerry_error_t error_type, /**< the type of error to create */
                            const jerry_char_t *message, /**< the error message */
                            const jerry_value_t module_name) /**< the module name */
{
  jerry_value_t ret = FUNC0 (error_type, message);

  jerry_value_t error_object = FUNC2 (ret, false);
  jerry_value_t property_name = FUNC1 (module_name_property_name);

  FUNC3 (FUNC4 (error_object, property_name, module_name));

  FUNC3 (property_name);
  FUNC3 (error_object);
  return ret;
}