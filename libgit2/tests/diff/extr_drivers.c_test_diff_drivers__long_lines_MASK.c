#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char const*,TYPE_1__*) ; 

void FUNC18(void)
{
	const char *base = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non nisi ligula. Ut viverra enim sed lobortis suscipit.\nPhasellus eget erat odio. Praesent at est iaculis, ultricies augue vel, dignissim risus. Suspendisse at nisi quis turpis fringilla rutrum id sit amet nulla.\nNam eget dolor fermentum, aliquet nisl at, convallis tellus. Pellentesque rhoncus erat enim, id porttitor elit euismod quis.\nMauris sollicitudin magna odio, non egestas libero vehicula ut. Etiam et quam velit. Fusce eget libero rhoncus, ultricies felis sit amet, egestas purus.\nAliquam in semper tellus. Pellentesque adipiscing rutrum velit, quis malesuada lacus consequat eget.\n";
	git_index *idx;
	git_diff *diff;
	git_patch *patch;
	git_buf actual = GIT_BUF_INIT;
	const char *expected = "diff --git a/longlines.txt b/longlines.txt\nindex c1ce6ef..0134431 100644\n--- a/longlines.txt\n+++ b/longlines.txt\n@@ -3,3 +3,5 @@ Phasellus eget erat odio. Praesent at est iaculis, ultricies augue vel, dignissi\n Nam eget dolor fermentum, aliquet nisl at, convallis tellus. Pellentesque rhoncus erat enim, id porttitor elit euismod quis.\n Mauris sollicitudin magna odio, non egestas libero vehicula ut. Etiam et quam velit. Fusce eget libero rhoncus, ultricies felis sit amet, egestas purus.\n Aliquam in semper tellus. Pellentesque adipiscing rutrum velit, quis malesuada lacus consequat eget.\n+newline\n+newline\n";

	g_repo = FUNC5("empty_standard_repo");

	FUNC3("empty_standard_repo/longlines.txt", base);
	FUNC4(FUNC16(&idx, g_repo));
	FUNC4(FUNC10(idx, "longlines.txt"));
	FUNC4(FUNC12(idx));
	FUNC11(idx);

	FUNC2("empty_standard_repo/longlines.txt", "newline\nnewline\n");

	FUNC4(FUNC8(&diff, g_repo, NULL, NULL));
	FUNC1(1, FUNC9(diff));
	FUNC4(FUNC14(&patch, diff, 0));
	FUNC4(FUNC15(&actual, patch));

	/* if chmod not supported, overwrite mode bits since anything is possible */
	FUNC17(expected, &actual);

	FUNC0(expected, actual.ptr);

	FUNC6(&actual);
	FUNC13(patch);
	FUNC7(diff);
}