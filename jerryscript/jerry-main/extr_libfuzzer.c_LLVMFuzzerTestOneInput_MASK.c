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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_size_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  JERRY_PARSE_NO_OPTS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9 (const uint8_t *data, size_t size)
{
  FUNC8 (0);
  FUNC1 (JERRY_INIT_EMPTY);

  if (FUNC2 ((jerry_char_t *) data, (jerry_size_t) size))
  {
    jerry_value_t parse_value = FUNC3 (NULL, 0, (jerry_char_t *) data, size, JERRY_PARSE_NO_OPTS);

    if (!FUNC7 (parse_value))
    {
      jerry_value_t run_value = FUNC5 (parse_value);
      FUNC4 (run_value);

      jerry_value_t run_queue_value = FUNC6 ();
      FUNC4 (run_queue_value);
    }

    FUNC4 (parse_value);
  }

  FUNC0 ();

  return 0;
}