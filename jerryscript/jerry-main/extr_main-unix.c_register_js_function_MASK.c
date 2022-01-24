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
typedef  int /*<<< orphan*/  jerry_external_handler_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_LOG_LEVEL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (const char *name_p, /**< name of the function */
                      jerry_external_handler_t handler_p) /**< function callback */
{
  jerry_value_t result_val = FUNC4 ((const jerry_char_t *) name_p, handler_p);

  if (FUNC3 (result_val))
  {
    FUNC1 (JERRY_LOG_LEVEL_WARNING, "Warning: failed to register '%s' method.", name_p);
    result_val = FUNC0 (result_val, true);
    FUNC5 (result_val);
  }

  FUNC2 (result_val);
}