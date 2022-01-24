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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  eval_string1 ; 
 int /*<<< orphan*/  eval_string2 ; 
 int /*<<< orphan*/  eval_string3 ; 
 int /*<<< orphan*/  eval_string4 ; 
 int /*<<< orphan*/  eval_string5 ; 
 int /*<<< orphan*/  eval_string6 ; 
 int /*<<< orphan*/  eval_string7 ; 
 int /*<<< orphan*/  handle_clear_require_cache ; 
 int /*<<< orphan*/  handle_require ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14 (int argc, char **argv)
{
  (void) argc;
  (void) argv;
  jerry_value_t js_global = 0, js_function = 0, js_property_name = 0;
  jerry_value_t res;

#ifndef ENABLE_INIT_FINI
  FUNC12 ();
  FUNC13 ();
#endif /* !ENABLE_INIT_FINI */

  FUNC7 (JERRY_INIT_EMPTY);

  js_global = FUNC6 ();

  js_function = FUNC3 (handle_require);
  js_property_name = FUNC4 ((const jerry_char_t *) "require");
  res = FUNC9 (js_global, js_property_name, js_function);
  FUNC0 (!FUNC11 (res));
  FUNC0 (FUNC10 (res) && FUNC5 (res));
  FUNC8 (res);
  FUNC8 (js_property_name);
  FUNC8 (js_function);

  js_function = FUNC3 (handle_clear_require_cache);
  js_property_name = FUNC4 ((const jerry_char_t *) "clear_require_cache");
  res = FUNC9 (js_global, js_property_name, js_function);
  FUNC0 (!FUNC11 (res));
  FUNC0 (FUNC10 (res) && FUNC5 (res));
  FUNC8 (res);
  FUNC8 (js_property_name);
  FUNC8 (js_function);

  FUNC8 (js_global);

  FUNC1 (eval_string1, 42);
  FUNC1 (eval_string2, 29);
  FUNC1 (eval_string3, 1);
  FUNC1 (eval_string4, 1);
  FUNC1 (eval_string5, 1);
  FUNC1 (eval_string6, 1);
  FUNC1 (eval_string7, 1);

  FUNC2 ();
}