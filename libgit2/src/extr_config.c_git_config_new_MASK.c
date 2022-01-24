#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  backends; } ;
typedef  TYPE_1__ git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  config_backend_cmp ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 

int FUNC6(git_config **out)
{
	git_config *cfg;

	cfg = FUNC3(sizeof(git_config));
	FUNC0(cfg);

	FUNC5(cfg, 0x0, sizeof(git_config));

	if (FUNC4(&cfg->backends, 3, config_backend_cmp) < 0) {
		FUNC2(cfg);
		return -1;
	}

	*out = cfg;
	FUNC1(cfg);
	return 0;
}