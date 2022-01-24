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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static jerry_value_t
FUNC2 (void *user_p)
{
  int *int_p = (int *) user_p;

  if (*int_p > 0)
  {
    (*int_p)--;

    return FUNC1 ();
  }

  return FUNC0 ((const jerry_char_t *) "Abort script");
}