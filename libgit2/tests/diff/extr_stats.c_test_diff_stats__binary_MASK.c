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
	" binary.bin | Bin 3 -> 0 bytes\n"
	" 1 file changed, 0 insertions(+), 0 deletions(-)\n";
	/* TODO: Actually 0 bytes here should be 5!. Seems like we don't load the new content for binary files? */

	FUNC3(
		&_stats, "8d7523f6fcb2404257889abe0d96f093d9f524f9", false);

	FUNC1(1, FUNC7(_stats));
	FUNC1(0, FUNC8(_stats));
	FUNC1(0, FUNC6(_stats));

	FUNC2(FUNC9(&buf, _stats, GIT_DIFF_STATS_FULL, 0));
	FUNC0(stat, FUNC4(&buf));
	FUNC5(&buf);
}