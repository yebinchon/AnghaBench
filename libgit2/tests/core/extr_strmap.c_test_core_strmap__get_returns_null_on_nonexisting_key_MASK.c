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
 size_t FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,char*) ; 

void FUNC5(void)
{
	const char *keys[] = { "foo", "bar", "gobble" };
	char *values[] = { "oof", "rab", "elbbog" };
	size_t i;

	for (i = 0; i < FUNC0(keys); i++)
		FUNC2(FUNC4(g_table, keys[i], values[i]));

	FUNC1(FUNC3(g_table, "other"), NULL);
}