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
struct TYPE_3__ {int /*<<< orphan*/  prune_refs; } ;
typedef  TYPE_1__ git_remote ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(git_remote *remote, git_config *config, const char *name)
{
	git_buf buf = GIT_BUF_INIT;
	int error = 0;

	FUNC2(&buf, "remote.%s.prune", name);

	if ((error = FUNC3(&remote->prune_refs, config, FUNC0(&buf))) < 0) {
		if (error == GIT_ENOTFOUND) {
			FUNC4();

			if ((error = FUNC3(&remote->prune_refs, config, "fetch.prune")) < 0) {
				if (error == GIT_ENOTFOUND) {
					FUNC4();
					error = 0;
				}
			}
		}
	}

	FUNC1(&buf);
	return error;
}