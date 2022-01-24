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
 int /*<<< orphan*/  JERRY_BIN_OP_STRICT_EQUAL ; 
 int /*<<< orphan*/  JERRY_FEATURE_LINE_INFO ; 
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  JERRY_LOG_LEVEL_ERROR ; 
 int /*<<< orphan*/  JERRY_PARSE_NO_OPTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resource_name_handler ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 

int
FUNC18 (void)
{
  FUNC1 ();

  if (!FUNC9 (JERRY_FEATURE_LINE_INFO))
  {
    FUNC11 (JERRY_LOG_LEVEL_ERROR, "Line info support is disabled!\n");
    return 0;
  }

  FUNC8 (JERRY_INIT_EMPTY);

  jerry_value_t global = FUNC6 ();

  /* Register the "resourceName" method. */
  {
    jerry_value_t func = FUNC4 (resource_name_handler);
    jerry_value_t name = FUNC5 ((const jerry_char_t *) "resourceName");
    jerry_value_t result = FUNC14 (global, name, func);
    FUNC12 (result);
    FUNC12 (name);
    FUNC12 (func);
  }

  FUNC12 (global);

  const char *source_1 = ("function f1 () {\n"
                          "  if (resourceName() !== 'demo1.js') return false; \n"
                          "  if (resourceName(f1) !== 'demo1.js') return false; \n"
                          "  if (resourceName(5) !== '<anonymous>') return false; \n"
                          "  return f1; \n"
                          "} \n"
                          "f1();");
  const char *resource_1 = "demo1.js";

  jerry_value_t program = FUNC10 ((const jerry_char_t *) resource_1,
                                       FUNC17 (resource_1),
                                       (const jerry_char_t *) source_1,
                                       FUNC17 (source_1),
                                       JERRY_PARSE_NO_OPTS);
  FUNC0 (!FUNC15 (program));

  jerry_value_t run_result = FUNC13 (program);
  FUNC0 (!FUNC15 (run_result));
  FUNC0 (FUNC16 (run_result));

  jerry_value_t resource_value = FUNC7 (run_result);
  jerry_value_t resource1_name_value = FUNC5 ((const jerry_char_t *) resource_1);
  FUNC0 (FUNC2 (JERRY_BIN_OP_STRICT_EQUAL, resource_value, resource1_name_value));
  FUNC12 (resource1_name_value);
  FUNC12 (resource_value);

  FUNC12 (run_result);
  FUNC12 (program);

  const char *source_2 = ("function f2 () { \n"
                          "  if (resourceName() !== 'demo2.js') return false; \n"
                          "  if (resourceName(f2) !== 'demo2.js') return false; \n"
                          "  if (resourceName(f1) !== 'demo1.js') return false; \n"
                          "  if (resourceName(Object.prototype) !== '<anonymous>') return false; \n"
                          "  if (resourceName(Function) !== '<anonymous>') return false; \n"
                          "  return f2; \n"
                          "} \n"
                          "f2(); \n");
  const char *resource_2 = "demo2.js";


  program = FUNC10 ((const jerry_char_t *) resource_2,
                         FUNC17 (resource_2),
                         (const jerry_char_t *) source_2,
                         FUNC17 (source_2),
                         JERRY_PARSE_NO_OPTS);
  FUNC0 (!FUNC15 (program));

  run_result = FUNC13 (program);
  FUNC0 (!FUNC15 (run_result));
  FUNC0 (FUNC16 (run_result));

  resource_value = FUNC7 (run_result);
  jerry_value_t resource2_name_value = FUNC5 ((const jerry_char_t *) resource_2);
  FUNC0 (FUNC2 (JERRY_BIN_OP_STRICT_EQUAL, resource_value, resource2_name_value));
  FUNC12 (resource2_name_value);
  FUNC12 (resource_value);

  FUNC12 (run_result);
  FUNC12 (program);

  FUNC3 ();

  return 0;
}