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
struct repository {int /*<<< orphan*/  index; } ;
struct replay_opts {int dummy; } ;
struct lock_file {int dummy; } ;

/* Variables and functions */
 int COMMIT_LOCK ; 
 struct lock_file LOCK_INIT ; 
 int REFRESH_QUIET ; 
 int REFRESH_UNMERGED ; 
 int SKIP_IF_UNCHANGED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct replay_opts*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct repository*,struct lock_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct repository*) ; 
 int /*<<< orphan*/  FUNC6 (struct lock_file*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct lock_file*,int) ; 

__attribute__((used)) static int FUNC8(struct repository *r,
				  struct replay_opts *opts)
{
	struct lock_file index_lock = LOCK_INIT;
	int index_fd = FUNC4(r, &index_lock, 0);
	if (FUNC5(r) < 0) {
		FUNC6(&index_lock);
		return FUNC2(FUNC0("git %s: failed to read the index"),
			FUNC0(FUNC1(opts)));
	}
	FUNC3(r->index, REFRESH_QUIET|REFRESH_UNMERGED, NULL, NULL, NULL);
	if (index_fd >= 0) {
		if (FUNC7(r->index, &index_lock,
				       COMMIT_LOCK | SKIP_IF_UNCHANGED)) {
			return FUNC2(FUNC0("git %s: failed to refresh the index"),
				FUNC0(FUNC1(opts)));
		}
	}
	return 0;
}