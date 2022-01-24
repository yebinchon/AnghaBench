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
typedef  char jerry_char_t ;
typedef  int /*<<< orphan*/  is_equal_src ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_PARSE_NO_OPTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8 (jerry_value_t a, /**< the first string to compare */
               jerry_value_t b) /**< the second string to compare */
{
  const jerry_char_t is_equal_src[] = "var isEqual = function(a, b) { return (a === b); }; isEqual";
  jerry_value_t is_equal_fn_val = FUNC3 (is_equal_src, sizeof (is_equal_src) - 1, JERRY_PARSE_NO_OPTS);
  FUNC0 (!FUNC7 (is_equal_fn_val));
  jerry_value_t args[2] = {a, b};
  jerry_value_t res = FUNC1 (is_equal_fn_val, FUNC2 (), args, 2);
  FUNC0 (!FUNC7 (res));
  FUNC0 (FUNC6 (res));
  bool is_strict_equal = FUNC4 (res);
  FUNC5 (res);
  FUNC5 (is_equal_fn_val);
  return is_strict_equal;
}