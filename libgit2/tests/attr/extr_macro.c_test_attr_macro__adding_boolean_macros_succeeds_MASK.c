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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

void FUNC8(void)
{
	const char *value;

	g_repo = FUNC5("empty_standard_repo");
	FUNC3(FUNC6(g_repo, "macro-pos", "positive"));
	FUNC3(FUNC6(g_repo, "macro-neg", "-negative"));
	FUNC4("empty_standard_repo/.gitattributes", "file.txt macro-pos macro-neg\n");

	FUNC3(FUNC7(&value, g_repo, 0, "file.txt", "positive"));
	FUNC2(FUNC1(value));
	FUNC3(FUNC7(&value, g_repo, 0, "file.txt", "negative"));
	FUNC2(FUNC0(value));
}