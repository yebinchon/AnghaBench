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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2(void)
{
	FUNC0("@{-xyz}");
	FUNC0("@{-0}");
	FUNC0("@{-1b}");

	FUNC1("@{-42}", NULL);

	FUNC1("@{-2}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
	FUNC1("@{-1}", "a4a7dce85cf63874e984719f4fdd239f5145052f");
}