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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static bool
FUNC1 (const jerry_value_t name, /**< field name */
                const jerry_value_t value, /**< field value */
                void *user_data) /**< user data */
{
  FUNC0 (name);
  FUNC0 (value);
  int *count_p = (int *) (user_data);

  if (*count_p == 3)
  {
    return false;
  }
  (*count_p)++;
  return true;
}