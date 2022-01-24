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
 int /*<<< orphan*/  backtrace_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 

__attribute__((used)) static void
FUNC13 (void)
{
  FUNC7 (JERRY_INIT_EMPTY);

  jerry_value_t global = FUNC6 ();

  jerry_value_t func = FUNC3 (backtrace_handler);
  jerry_value_t name = FUNC4 ((const jerry_char_t *) "backtrace");
  jerry_value_t result = FUNC9 (global, name, func);
  FUNC0 (!FUNC11 (result));

  FUNC8 (result);
  FUNC8 (name);
  FUNC8 (func);

  FUNC8 (global);

  const char *source = ("function f() {\n"
                        "  return backtrace(0);\n"
                        "}\n"
                        "\n"
                        "function g() {\n"
                        "  return f();\n"
                        "}\n"
                        "\n"
                        "function h() {\n"
                        "  return g();\n"
                        "}\n"
                        "\n"
                        "h();\n");

  jerry_value_t backtrace = FUNC12 ("something.js", source);

  FUNC0 (!FUNC11 (backtrace)
               && FUNC10 (backtrace));

  FUNC0 (FUNC5 (backtrace) == 4);

  FUNC1 (backtrace, 0, "something.js:2");
  FUNC1 (backtrace, 1, "something.js:6");
  FUNC1 (backtrace, 2, "something.js:10");
  FUNC1 (backtrace, 3, "something.js:13");

  FUNC8 (backtrace);

  /* Depth set to 2 this time. */

  source = ("function f() {\n"
            "  return backtrace(2);\n"
            "}\n"
            "\n"
            "function g() {\n"
            "  return f();\n"
            "}\n"
            "\n"
            "function h() {\n"
            "  return g();\n"
            "}\n"
            "\n"
            "h();\n");

  backtrace = FUNC12 ("something_else.js", source);

  FUNC0 (!FUNC11 (backtrace)
               && FUNC10 (backtrace));

  FUNC0 (FUNC5 (backtrace) == 2);

  FUNC1 (backtrace, 0, "something_else.js:2");
  FUNC1 (backtrace, 1, "something_else.js:6");

  FUNC8 (backtrace);

  FUNC2 ();
}