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
struct TYPE_5__ {char* orig_head_name; scalar_t__ quiet; int /*<<< orphan*/  orig_head_id; int /*<<< orphan*/  repo; scalar_t__ head_detached; int /*<<< orphan*/  state_path; int /*<<< orphan*/  onto_id; } ;
typedef  TYPE_1__ git_rebase ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  HEAD_NAME_FILE ; 
 int /*<<< orphan*/  ONTO_FILE ; 
 char* ORIG_DETACHED_HEAD ; 
 int /*<<< orphan*/  ORIG_HEAD_FILE ; 
 int /*<<< orphan*/  QUIET_FILE ; 
 int /*<<< orphan*/  REBASE_DIR_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(git_rebase *rebase)
{
	char onto[GIT_OID_HEXSZ], orig_head[GIT_OID_HEXSZ];
	const char *orig_head_name;

	FUNC1(onto, &rebase->onto_id);
	FUNC1(orig_head, &rebase->orig_head_id);

	if (FUNC3(rebase->state_path, REBASE_DIR_MODE) < 0) {
		FUNC0(GIT_ERROR_OS, "failed to create rebase directory '%s'", rebase->state_path);
		return -1;
	}

	orig_head_name = rebase->head_detached ? ORIG_DETACHED_HEAD :
		rebase->orig_head_name;

	if (FUNC2(rebase->repo, &rebase->orig_head_id) < 0 ||
		FUNC4(rebase, HEAD_NAME_FILE, 0, "%s\n", orig_head_name) < 0 ||
		FUNC4(rebase, ONTO_FILE, 0, "%.*s\n", GIT_OID_HEXSZ, onto) < 0 ||
		FUNC4(rebase, ORIG_HEAD_FILE, 0, "%.*s\n", GIT_OID_HEXSZ, orig_head) < 0 ||
		FUNC4(rebase, QUIET_FILE, 0, rebase->quiet ? "t\n" : "\n") < 0)
		return -1;

	return FUNC5(rebase);
}