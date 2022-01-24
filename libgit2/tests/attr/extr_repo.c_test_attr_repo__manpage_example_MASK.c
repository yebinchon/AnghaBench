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
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

void FUNC7(void)
{
	const char *value;

	FUNC5(FUNC6(&value, g_repo, 0, "sub/abc", "foo"));
	FUNC3(FUNC1(value));

	FUNC5(FUNC6(&value, g_repo, 0, "sub/abc", "bar"));
	FUNC3(FUNC2(value));

	FUNC5(FUNC6(&value, g_repo, 0, "sub/abc", "baz"));
	FUNC3(FUNC0(value));

	FUNC5(FUNC6(&value, g_repo, 0, "sub/abc", "merge"));
	FUNC4("filfre", value);

	FUNC5(FUNC6(&value, g_repo, 0, "sub/abc", "frotz"));
	FUNC3(FUNC2(value));
}