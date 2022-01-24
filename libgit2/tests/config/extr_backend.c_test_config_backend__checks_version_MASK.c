#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  klass; } ;
typedef  TYPE_1__ git_error ;
struct TYPE_7__ {int version; } ;
typedef  TYPE_2__ git_config_backend ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 TYPE_2__ GIT_CONFIG_BACKEND_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* FUNC7 () ; 

void FUNC8(void)
{
	git_config *cfg;
	git_config_backend backend = GIT_CONFIG_BACKEND_INIT;
	const git_error *err;

	backend.version = 1024;

	FUNC2(FUNC5(&cfg));
	FUNC1(FUNC3(cfg, &backend, 0, NULL, false));
	err = FUNC7();
	FUNC0(GIT_ERROR_INVALID, err->klass);

	FUNC6();
	backend.version = 1024;
	FUNC1(FUNC3(cfg, &backend, 0, NULL, false));
	err = FUNC7();
	FUNC0(GIT_ERROR_INVALID, err->klass);

	FUNC4(cfg);
}