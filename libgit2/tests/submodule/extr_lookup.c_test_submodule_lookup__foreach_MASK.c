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
struct TYPE_4__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ sm_lookup_data ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sm_lookup_cb ; 

void FUNC8(void)
{
	git_config *cfg;
	sm_lookup_data data;

	FUNC7(&data, 0, sizeof(data));
	FUNC1(FUNC6(g_repo, sm_lookup_cb, &data));
	FUNC0(8, data.count);

	FUNC7(&data, 0, sizeof(data));

	/* Change the path for a submodule so it doesn't match the name */
	FUNC1(FUNC4(&cfg, "submod2/.gitmodules"));

	FUNC1(FUNC5(cfg, "submodule.smchangedindex.path", "sm_changed_index"));
	FUNC1(FUNC5(cfg, "submodule.smchangedindex.url", "../submod2_target"));
	FUNC1(FUNC2(cfg, "submodule.sm_changed_index.path"));
	FUNC1(FUNC2(cfg, "submodule.sm_changed_index.url"));

	FUNC3(cfg);

	FUNC1(FUNC6(g_repo, sm_lookup_cb, &data));
	FUNC0(8, data.count);
}