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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char const* string2 ; 
 int test_context_data2_free_called ; 

__attribute__((used)) static void
FUNC1 (void *user_data_p)
{
  test_context_data2_free_called = true;
  FUNC0 ((*(const char **) user_data_p) == string2);
}