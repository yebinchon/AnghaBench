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
struct stat {int dummy; } ;
struct p_timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct p_timeval*) ; 

__attribute__((used)) static void FUNC6(struct stat *out, const char *fn)
{
	git_buf fullpath = GIT_BUF_INIT;
	struct p_timeval old[2];

	old[0].tv_sec = 1234567890;
	old[0].tv_usec = 0;
	old[1].tv_sec = 1234567890;
	old[1].tv_usec = 0;

	FUNC3(&fullpath, "testrepo.git/objects", fn);

	FUNC0(FUNC5(FUNC1(&fullpath), old));
	FUNC0(FUNC4(FUNC1(&fullpath), out));
	FUNC2(&fullpath);
}