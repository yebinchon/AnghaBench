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
typedef  int jerry_size_t ;
typedef  scalar_t__ jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_LOG_LEVEL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (jerry_value_t error_value) /**< error value */
{
  FUNC0 (!FUNC5 (error_value));

  jerry_value_t err_str_val = FUNC6 (error_value);

  if (FUNC5 (err_str_val))
  {
    /* Avoid recursive error throws. */
    FUNC2 (JERRY_LOG_LEVEL_ERROR, "Snapshot error: [value cannot be converted to string]\n");
    FUNC3 (err_str_val);
    return;
  }

  jerry_size_t err_str_size = FUNC1 (err_str_val);

  if (err_str_size >= 256)
  {
    FUNC2 (JERRY_LOG_LEVEL_ERROR, "Snapshot error: [value cannot be converted to string]\n");
    FUNC3 (err_str_val);
    return;
  }

  jerry_char_t err_str_buf[256];
  jerry_size_t string_end = FUNC4 (err_str_val, err_str_buf, err_str_size);
  FUNC0 (string_end == err_str_size);
  err_str_buf[string_end] = 0;

  FUNC2 (JERRY_LOG_LEVEL_ERROR, "Snapshot error: %s\n", (char *) err_str_buf);
  FUNC3 (err_str_val);
}