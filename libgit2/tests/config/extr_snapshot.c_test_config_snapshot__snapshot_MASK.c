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
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/ * cfg ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * snapshot ; 

void FUNC8(void)
{
	git_config *snapshot_snapshot;
	int i;

	FUNC1("configfile", "[section]\nkey = 1\n");

	FUNC2(FUNC5(&cfg, "configfile"));
	FUNC2(FUNC6(&snapshot, cfg));

	FUNC2(FUNC6(&snapshot_snapshot, snapshot));

	FUNC2(FUNC4(&i, snapshot_snapshot, "section.key"));
	FUNC0(i, 1);

	FUNC3(snapshot_snapshot);

	FUNC2(FUNC7("configfile"));
}