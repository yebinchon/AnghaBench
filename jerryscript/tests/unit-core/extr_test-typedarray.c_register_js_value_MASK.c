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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (const char *name_p, /**< name of the function */
                    jerry_value_t value) /**< function callback */
{
  jerry_value_t global_obj_val = FUNC1 ();

  jerry_value_t name_val = FUNC0 ((const jerry_char_t *) name_p);
  jerry_value_t result_val = FUNC3 (global_obj_val, name_val, value);

  FUNC2 (name_val);
  FUNC2 (global_obj_val);

  FUNC2 (result_val);
}