#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_GLOBAL ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_PROGRAMDATA ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_SYSTEM ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_XDG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **) ; 

int FUNC9(git_config **out)
{
	int error;
	git_config *cfg = NULL;
	git_buf buf = GIT_BUF_INIT;

	if ((error = FUNC8(&cfg)) < 0)
		return error;

	if (!FUNC3(&buf) || !FUNC1(&buf)) {
		error = FUNC2(cfg, buf.ptr,
			GIT_CONFIG_LEVEL_GLOBAL, NULL, 0);
	}

	if (!error && !FUNC6(&buf))
		error = FUNC2(cfg, buf.ptr,
			GIT_CONFIG_LEVEL_XDG, NULL, 0);

	if (!error && !FUNC5(&buf))
		error = FUNC2(cfg, buf.ptr,
			GIT_CONFIG_LEVEL_SYSTEM, NULL, 0);

	if (!error && !FUNC4(&buf))
		error = FUNC2(cfg, buf.ptr,
			GIT_CONFIG_LEVEL_PROGRAMDATA, NULL, 0);

	FUNC0(&buf);

	if (error) {
		FUNC7(cfg);
		cfg = NULL;
	}

	*out = cfg;

	return error;
}