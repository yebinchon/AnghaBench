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
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_diff_hunk ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

void FUNC9(void)
{
	const char *text = "diff --git a/a b/a\n"
	"index 7f129fd..af431f2 100644\n"
	"--- a/a\n"
	"+++ b/a\n"
	"@@ -3 +3 @@\n"
	"-a contents 2\n"
	"+a contents\n";

	git_diff *diff;
	git_patch *patch;
	const git_diff_hunk *hunk;
	size_t n, l = 0;

	FUNC2(FUNC4(&diff, text, FUNC8(text)));
	FUNC2(FUNC6(&patch, diff, 0));
	FUNC2(FUNC7(&hunk, &n, patch, 0));

	FUNC1(3, -1, 1, patch, 0, l++);
	FUNC1(-1, 3, 1, patch, 0, l++);

	FUNC0(n, l);

	FUNC5(patch);
	FUNC3(diff);
}