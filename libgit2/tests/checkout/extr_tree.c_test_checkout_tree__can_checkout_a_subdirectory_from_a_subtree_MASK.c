#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char** strings; int count; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_object ; 
 TYPE_2__ g_opts ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void FUNC6(void)
{
	char *entries[] = { "de/" };

	g_opts.paths.strings = entries;
	g_opts.paths.count = 1;

	FUNC1(FUNC5(&g_object, g_repo, "subtrees:ab"));

	FUNC0(false, FUNC3("./testrepo/de/"));

	FUNC1(FUNC2(g_repo, g_object, &g_opts));

	FUNC0(true, FUNC4("./testrepo/de/2.txt"));
	FUNC0(true, FUNC4("./testrepo/de/fgh/1.txt"));
}