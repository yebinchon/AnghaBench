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
 int current_title ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int test_case_run_count ; 

__attribute__((used)) static void FUNC2(const char *message)
{
	FUNC1();

	FUNC0("FAIL: %s\n", message);
	FUNC0("FAIL: Test %s\n", current_title);
	FUNC0("FAIL: Scenario %d\n", test_case_run_count >> 1);
}