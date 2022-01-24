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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static jerry_value_t
FUNC6 (const char *resource_name_p, /**< resource name */
     const char *source_p) /**< source code */
{
  jerry_value_t code = FUNC1 ((const jerry_char_t *) resource_name_p,
                                    FUNC5 (resource_name_p),
                                    (const jerry_char_t *) source_p,
                                    FUNC5 (source_p),
                                    JERRY_PARSE_NO_OPTS);
  FUNC0 (!FUNC4 (code));

  jerry_value_t result = FUNC3 (code);
  FUNC2 (code);

  return result;
}