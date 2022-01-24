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
typedef  int /*<<< orphan*/  script ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  char jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  JERRY_PARSE_NO_OPTS ; 
 int JERRY_STANDALONE_EXIT_CODE_FAIL ; 
 int JERRY_STANDALONE_EXIT_CODE_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jerryx_handler_print ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

int FUNC9 (int argc, char **argv)
{
  /* Suppress compiler errors */
  (void) argc;
  (void) argv;

  jerry_value_t ret_value = FUNC1 ();

  const jerry_char_t script[] = "print ('Hello, World!');";
  FUNC7 ("This test run the following script code: [%s]\n\n", script);

  /* Initialize engine */
  FUNC2 (JERRY_INIT_EMPTY);

  /* Register the print function in the global object. */
  FUNC8 ("print", jerryx_handler_print);

  /* Setup Global scope code */
  ret_value = FUNC3 (NULL, 0, script, sizeof (script) - 1, JERRY_PARSE_NO_OPTS);

  if (!FUNC6 (ret_value))
  {
    /* Execute the parsed source code in the Global scope */
    ret_value = FUNC5 (ret_value);
  }

  int ret_code = JERRY_STANDALONE_EXIT_CODE_OK;

  if (FUNC6 (ret_value))
  {
    FUNC7 ("Script Error!");

    ret_code = JERRY_STANDALONE_EXIT_CODE_FAIL;
  }

  FUNC4 (ret_value);

  /* Cleanup engine */
  FUNC0 ();

  return ret_code;

}