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
 int /*<<< orphan*/  GIT_FILTER_DRIVER_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	FUNC0(FUNC4(
		"wildcard", FUNC3(), GIT_FILTER_DRIVER_PRIORITY));

	g_repo = FUNC2("empty_standard_repo");

	FUNC1(
		"empty_standard_repo/.gitattributes",
		"* binary\n"
		"hero-flip-* filter=wcflip\n"
		"hero-reverse-* filter=wcreverse\n"
		"none-* filter=unregistered\n");
}