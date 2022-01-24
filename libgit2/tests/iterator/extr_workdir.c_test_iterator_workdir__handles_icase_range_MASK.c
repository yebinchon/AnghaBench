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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	g_repo = FUNC3("empty_standard_repo");
	FUNC2(FUNC4(g_repo), "dummy-marker.txt");

	FUNC1("empty_standard_repo/before", "whatever\n");
	FUNC1("empty_standard_repo/FIRST", "whatever\n");
	FUNC1("empty_standard_repo/second", "whatever\n");
	FUNC1("empty_standard_repo/THIRD", "whatever\n");
	FUNC1("empty_standard_repo/zafter", "whatever\n");
	FUNC1("empty_standard_repo/Zlast", "whatever\n");

	FUNC0(g_repo, "first", "third");
	FUNC0(g_repo, "FIRST", "THIRD");
	FUNC0(g_repo, "first", "THIRD");
	FUNC0(g_repo, "FIRST", "third");
	FUNC0(g_repo, "FirSt", "tHiRd");
}