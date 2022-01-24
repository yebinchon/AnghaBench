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
struct repository_format {int /*<<< orphan*/  work_tree; int /*<<< orphan*/  is_bare; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *var, const char *value, void *vdata)
{
	struct repository_format *data = vdata;

	if (FUNC3(var, "core.bare") == 0) {
		data->is_bare = FUNC2(var, value);
	} else if (FUNC3(var, "core.worktree") == 0) {
		if (!value)
			return FUNC0(var);
		FUNC1(data->work_tree);
		data->work_tree = FUNC4(value);
	}
	return 0;
}