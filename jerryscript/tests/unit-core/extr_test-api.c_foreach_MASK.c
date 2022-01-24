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
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 
 double FUNC2 (int /*<<< orphan*/  const) ; 
 size_t FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/  const) ; 
 int FUNC5 (int /*<<< orphan*/  const) ; 
 int FUNC6 (int /*<<< orphan*/  const) ; 
 int FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,size_t) ; 

__attribute__((used)) static bool
FUNC9 (const jerry_value_t name, /**< field name */
         const jerry_value_t value, /**< field value */
         void *user_data) /**< user data */
{
  char str_buf_p[128];
  jerry_size_t sz = FUNC3 (name, (jerry_char_t *) str_buf_p, 128);
  str_buf_p[sz] = '\0';

  FUNC0 (!FUNC8 ((const char *) user_data, "user_data", 9));
  FUNC0 (sz > 0);

  if (!FUNC8 (str_buf_p, "alpha", (size_t) sz))
  {
    FUNC0 (FUNC5 (value));
    FUNC0 (FUNC2 (value) == 32.0);
    return true;
  }
  else if (!FUNC8 (str_buf_p, "bravo", (size_t) sz))
  {
    FUNC0 (FUNC4 (value));
    FUNC0 (FUNC1 (value) == false);
    return true;
  }
  else if (!FUNC8 (str_buf_p, "charlie", (size_t) sz))
  {
    FUNC0 (FUNC6 (value));
    return true;
  }
  else if (!FUNC8 (str_buf_p, "delta", (size_t) sz))
  {
    FUNC0 (FUNC5 (value));
    FUNC0 (FUNC2 (value) == 123.45);
    return true;
  }
  else if (!FUNC8 (str_buf_p, "echo", (size_t) sz))
  {
    FUNC0 (FUNC7 (value));
    jerry_size_t echo_sz = FUNC3 (value,
                                                        (jerry_char_t *) str_buf_p,
                                                        128);
    str_buf_p[echo_sz] = '\0';
    FUNC0 (!FUNC8 (str_buf_p, "foobar", (size_t) echo_sz));
    return true;
  }

  FUNC0 (false);
  return false;


}