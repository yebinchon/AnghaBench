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
 int /*<<< orphan*/  cfg ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  snapshot ; 

void FUNC7(void)
{
	int i;

	FUNC1("including", "[include]\npath = included");
	FUNC1("included", "[section]\nkey = 1\n");

	FUNC2(FUNC4(&cfg, "including"));
	FUNC2(FUNC5(&snapshot, cfg));

	FUNC2(FUNC3(&i, snapshot, "section.key"));
	FUNC0(i, 1);

	/* Rewrite "included" config */
	FUNC1("included", "[section]\nkey = 11\n");

	/* Assert that the live config changed, but snapshot remained the same */
	FUNC2(FUNC3(&i, cfg, "section.key"));
	FUNC0(i, 11);
	FUNC2(FUNC3(&i, snapshot, "section.key"));
	FUNC0(i, 1);

	FUNC2(FUNC6("including"));
	FUNC2(FUNC6("included"));
}