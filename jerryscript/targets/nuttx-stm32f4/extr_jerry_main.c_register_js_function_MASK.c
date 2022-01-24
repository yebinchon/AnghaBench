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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (const char *name_p, /**< name of the function */
                      jerry_external_handler_t handler_p) /**< function callback */
{
  jerry_value_t result_val = FUNC3 ((const jerry_char_t *) name_p, handler_p);

  if (FUNC2 (result_val))
  {
    FUNC0 (JERRY_LOG_LEVEL_WARNING, "Warning: failed to register '%s' method.", name_p);
  }

  FUNC1 (result_val);
}