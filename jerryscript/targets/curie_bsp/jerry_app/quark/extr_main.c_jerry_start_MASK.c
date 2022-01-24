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
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  print_function ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 

void FUNC7 ()
{
  FUNC6 ((unsigned) FUNC4 ());
  FUNC3 (JERRY_INIT_EMPTY);
  jerry_value_t global_obj_val = FUNC1 ();
  jerry_value_t print_func_name_val = FUNC0 ((jerry_char_t *) "print");
  print_function = FUNC2 (global_obj_val, print_func_name_val);
  FUNC5 (print_func_name_val);
  FUNC5 (global_obj_val);
}