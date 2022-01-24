#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* name; } ;
typedef  TYPE_1__ git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_REFS_HEADS_DIR ; 
 int /*<<< orphan*/  GIT_REFS_REMOTES_DIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(
	const char **out,
	const git_reference *ref)
{
	const char *branch_name;

	FUNC0(out && ref);

	branch_name = ref->name;

	if (FUNC2(ref)) {
		branch_name += FUNC4(GIT_REFS_HEADS_DIR);
	} else if (FUNC3(ref)) {
		branch_name += FUNC4(GIT_REFS_REMOTES_DIR);
	} else {
		FUNC1(GIT_ERROR_INVALID,
				"reference '%s' is neither a local nor a remote branch.", ref->name);
		return -1;
	}
	*out = branch_name;
	return 0;
}