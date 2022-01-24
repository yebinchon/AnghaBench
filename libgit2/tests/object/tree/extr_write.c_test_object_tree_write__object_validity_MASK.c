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
 int /*<<< orphan*/  GIT_OPT_ENABLE_STRICT_OBJECT_CREATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(void)
{
	/* Ensure that we cannot add invalid objects by default */
	FUNC3(false);
	FUNC2();

	/* Ensure that we can turn off validation */
	FUNC0(FUNC1(GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, 0));
	FUNC3(true);
	FUNC2();
}