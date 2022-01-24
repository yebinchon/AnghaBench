#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ git_config_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_config ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

void FUNC6(void)
{
	git_config_entry *ce;

	FUNC2(FUNC4(
		&ce, g_config, "branch.track-local.remote"));
	FUNC0(".", ce->value);
	FUNC3(ce);

	FUNC1(FUNC4(
		&ce, g_config, "branch.local-track.remote"));

	FUNC2(FUNC5(
		g_repo, "branch.track-local", "branch.local-track"));

	FUNC2(FUNC4(
		&ce, g_config, "branch.local-track.remote"));
	FUNC0(".", ce->value);
	FUNC3(ce);

	FUNC1(FUNC4(
		&ce, g_config, "branch.track-local.remote"));
}