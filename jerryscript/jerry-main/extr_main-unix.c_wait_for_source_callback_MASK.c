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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static jerry_value_t
FUNC4 (const jerry_char_t *resource_name_p, /**< resource name */
                          size_t resource_name_size, /**< size of resource name */
                          const jerry_char_t *source_p, /**< source code */
                          size_t source_size, /**< source code size */
                          void *user_p) /**< user pointer */
{
  (void) user_p; /* unused */
  jerry_value_t ret_val = FUNC0 (resource_name_p,
                                       resource_name_size,
                                       source_p,
                                       source_size,
                                       JERRY_PARSE_NO_OPTS);

  if (!FUNC3 (ret_val))
  {
    jerry_value_t func_val = ret_val;
    ret_val = FUNC2 (func_val);
    FUNC1 (func_val);
  }

  return ret_val;
}