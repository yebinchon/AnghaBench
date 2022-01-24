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
typedef  size_t jerry_size_t ;
typedef  scalar_t__ jerry_char_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,scalar_t__*,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__*) ; 

void FUNC9 (jerry_value_t ret_value)
{
  if (FUNC6 (ret_value))
  {
    ret_value = FUNC3 (ret_value, true);
    jerry_value_t err_str_val = FUNC7 (ret_value);
    jerry_size_t err_str_size = FUNC2 (err_str_val);
    jerry_char_t *err_str_buf = (jerry_char_t *) FUNC0 (err_str_size, NULL);
    jerry_size_t sz = FUNC5 (err_str_val, err_str_buf, err_str_size);
    err_str_buf[sz] = 0;
    FUNC8 ("Script Error: unhandled exception: %s\n", err_str_buf);
    FUNC1(err_str_buf);
    FUNC4 (err_str_val);
  }
}