#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_OPT_SET_SEARCH_PATH ; 
 TYPE_1__ _global_path ; 
 int /*<<< orphan*/ * _repo ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* fixture_repo ; 
 char* fixture_templates ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	FUNC2(GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL,
		_global_path.ptr);
	FUNC1(&_global_path);

	FUNC0("tmp_global_path");

	if (fixture_repo) {
		FUNC0(fixture_repo);
		fixture_repo = NULL;
	}

	if (fixture_templates) {
		FUNC0(fixture_templates);
		fixture_templates = NULL;
	}

	FUNC3(_repo);
	_repo = NULL;
}