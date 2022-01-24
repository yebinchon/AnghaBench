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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  size_t jerry_size_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,size_t) ; 
 size_t FUNC8 (char const*) ; 

__attribute__((used)) static void
FUNC9 (jerry_value_t array, /**< array */
         uint32_t index, /**< item index */
         const char *str) /**< string to compare */
{
  jerry_char_t buf[64];

  size_t len = FUNC8 (str);

  FUNC0 (len < sizeof (buf));

  jerry_value_t value = FUNC1 (array, index);

  FUNC0 (!FUNC5 (value)
               && FUNC6 (value));

  FUNC0 (FUNC2 (value) == len);

  jerry_size_t str_len = FUNC4 (value, buf, (jerry_size_t) len);
  FUNC0 (str_len == len);

  FUNC3 (value);

  FUNC0 (FUNC7 (buf, str, len) == 0);
}