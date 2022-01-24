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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 

__attribute__((used)) static void
FUNC13 (void)
{
  FUNC7 (JERRY_INIT_EMPTY);

  const char *source = ("function f() {\n"
                        "  undef_reference;\n"
                        "}\n"
                        "\n"
                        "function g() {\n"
                        "  return f();\n"
                        "}\n"
                        "\n"
                        "g();\n");

  jerry_value_t error = FUNC12 ("bad.js", source);

  FUNC0 (FUNC10 (error));

  error = FUNC6 (error, true);

  FUNC0 (FUNC11 (error));

  jerry_value_t name = FUNC3 ((const jerry_char_t *) "stack");
  jerry_value_t backtrace = FUNC5 (error, name);

  FUNC8 (name);
  FUNC8 (error);

  FUNC0 (!FUNC10 (backtrace)
               && FUNC9 (backtrace));

  FUNC0 (FUNC4 (backtrace) == 3);

  FUNC1 (backtrace, 0, "bad.js:2");
  FUNC1 (backtrace, 1, "bad.js:6");
  FUNC1 (backtrace, 2, "bad.js:9");

  FUNC8 (backtrace);

  FUNC2 ();
}