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
struct repository_format {int /*<<< orphan*/  unknown_extensions; void* worktree_config; int /*<<< orphan*/  partial_clone; void* precious_objects; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 void* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int FUNC3 (char const*,char const*,void*) ; 
 scalar_t__ FUNC4 (char const*,char*,char const**) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(const char *var, const char *value, void *vdata)
{
	struct repository_format *data = vdata;
	const char *ext;

	if (FUNC5(var, "core.repositoryformatversion") == 0)
		data->version = FUNC2(var, value);
	else if (FUNC4(var, "extensions.", &ext)) {
		/*
		 * record any known extensions here; otherwise,
		 * we fall through to recording it as unknown, and
		 * check_repository_format will complain
		 */
		if (!FUNC5(ext, "noop"))
			;
		else if (!FUNC5(ext, "preciousobjects"))
			data->precious_objects = FUNC1(var, value);
		else if (!FUNC5(ext, "partialclone")) {
			if (!value)
				return FUNC0(var);
			data->partial_clone = FUNC7(value);
		} else if (!FUNC5(ext, "worktreeconfig"))
			data->worktree_config = FUNC1(var, value);
		else
			FUNC6(&data->unknown_extensions, ext);
	}

	return FUNC3(var, value, vdata);
}