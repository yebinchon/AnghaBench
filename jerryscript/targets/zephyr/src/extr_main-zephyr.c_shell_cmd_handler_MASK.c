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
 int /*<<< orphan*/  JERRY_PARSE_NO_OPTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  print_function ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8 (char *source_buffer)
{
  jerry_value_t ret_val;

  ret_val = FUNC2 ((jerry_char_t *) source_buffer,
    FUNC7 (source_buffer),
    JERRY_PARSE_NO_OPTS);

  if (FUNC5 (ret_val))
  {
    /* User-friendly error messages require at least "cp" JerryScript
       profile. Include a message prefix in case "cp_minimal" profile
       is used. */
    FUNC6 ("Error executing statement: ");
    /* Clear error flag, otherwise print call below won't produce any
       output. */
    ret_val = FUNC3 (ret_val, true);
  }

  if (!FUNC5 (print_function))
  {
    jerry_value_t ret_val_print = FUNC0 (print_function,
      FUNC1 (),
      &ret_val,
      1);
    FUNC4 (ret_val_print);
  }

  FUNC4 (ret_val);

  return 0;
}