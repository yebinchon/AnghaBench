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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_STATS_FULL ; 
 int /*<<< orphan*/  _stats ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	git_buf buf = GIT_BUF_INIT;
	const char *stat =
	" file2.txt         | 5 -----\n"
	" file2.txt.renamed | 6 ++++++\n"
	" file3.txt         | 5 -----\n"
	" file3.txt.renamed | 7 +++++++\n"
	" 4 files changed, 13 insertions(+), 10 deletions(-)\n";

	FUNC3(
		&_stats, "8947a46e2097638ca6040ad4877246f4186ec3bd", false);

	FUNC1(4, FUNC7(_stats));
	FUNC1(13, FUNC8(_stats));
	FUNC1(10, FUNC6(_stats));

	FUNC2(FUNC9(&buf, _stats, GIT_DIFF_STATS_FULL, 0));
	FUNC0(stat, FUNC4(&buf));
	FUNC5(&buf);
}