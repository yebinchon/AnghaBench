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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  expected_remote_name ; 
 int expected_remote_name_length ; 
 int /*<<< orphan*/  g_repo ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	g_repo = FUNC0("testrepo");

	expected_remote_name_length = (int)FUNC1(expected_remote_name) + 1;
}