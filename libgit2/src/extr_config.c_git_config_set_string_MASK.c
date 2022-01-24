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
struct TYPE_4__ {int (* set ) (TYPE_1__*,char const*,char const*) ;} ;
typedef  TYPE_1__ git_config_backend ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  BACKEND_USE_SET ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_CONFIG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,char const*,char const*) ; 

int FUNC5(git_config *cfg, const char *name, const char *value)
{
	int error;
	git_config_backend *backend;

	if (!value) {
		FUNC2(GIT_ERROR_CONFIG, "the value to set cannot be NULL");
		return -1;
	}

	if (FUNC1(&backend, cfg, name, BACKEND_USE_SET) < 0)
		return GIT_ENOTFOUND;

	error = backend->set(backend, name, value);

	if (!error && FUNC0(cfg) != NULL)
		FUNC3(FUNC0(cfg));

	return error;
}