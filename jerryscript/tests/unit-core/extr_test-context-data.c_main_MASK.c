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
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  manager1 ; 
 int /*<<< orphan*/  manager2 ; 
 int /*<<< orphan*/  manager3 ; 
 int /*<<< orphan*/  manager4 ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int test_context_data1_finalize_called ; 
 int test_context_data1_free_called ; 
 int test_context_data1_new_called ; 
 int test_context_data2_free_called ; 
 int test_context_data2_new_called ; 
 int test_context_data3_new_called ; 
 int test_context_data4_finalize_called ; 
 int test_context_data4_free_called ; 
 int test_context_data4_new_called ; 

int
FUNC6 (void)
{
  FUNC1 ();

  FUNC4 (JERRY_INIT_EMPTY);

  FUNC0 (!FUNC5 (*((const char **) FUNC3 (&manager1)), "item1"));
  FUNC0 (!FUNC5 (*((const char **) FUNC3 (&manager2)), "item2"));
  FUNC0 (FUNC3 (&manager3) == NULL);
  FUNC0 (FUNC3 (&manager4) == NULL);

  FUNC0 (test_context_data1_new_called);
  FUNC0 (test_context_data2_new_called);
  FUNC0 (test_context_data3_new_called);
  FUNC0 (test_context_data4_new_called);

  FUNC0 (!test_context_data1_free_called);
  FUNC0 (!test_context_data2_free_called);
  FUNC0 (!test_context_data4_free_called);

  FUNC2 ();

  FUNC0 (test_context_data1_free_called);
  FUNC0 (test_context_data2_free_called);
  FUNC0 (test_context_data4_free_called);

  FUNC0 (test_context_data1_finalize_called);
  FUNC0 (test_context_data4_finalize_called);

  return 0;
}