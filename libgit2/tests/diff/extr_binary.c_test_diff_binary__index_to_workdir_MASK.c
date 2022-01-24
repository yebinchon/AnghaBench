#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  id_abbrev; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int GIT_DIFF_FORCE_BINARY ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int GIT_DIFF_SHOW_BINARY ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ *,TYPE_1__*,char const*) ; 

void FUNC15(void)
{
	git_index *index;
	git_diff *diff;
	git_patch *patch;
	git_buf actual = GIT_BUF_INIT;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	const char *expected =
		"diff --git a/untimely.txt b/untimely.txt\n" \
		"index 9a69d960ae94b060f56c2a8702545e2bb1abb935..1111d4f11f4b35bf6759e0fb714fe09731ef0840 100644\n" \
		"GIT binary patch\n" \
		"delta 32\n" \
		"nc%1vf+QYWt3zLL@hC)e3Vu?a>QDRl4f_G*?PG(-ZA}<#J$+QbW\n" \
		"\n" \
		"delta 7\n" \
		"Oc%18D`@*{63ljhg(E~C7\n" \
		"\n";

	opts.flags = GIT_DIFF_SHOW_BINARY | GIT_DIFF_FORCE_BINARY;
	opts.id_abbrev = GIT_OID_HEXSZ;

	repo = FUNC3("renames");
	FUNC2(FUNC13(&index, repo));

	FUNC1("renames/untimely.txt", "Oh that crazy Kipling!\r\n");

	FUNC2(FUNC6(&diff, repo, index, &opts));

	FUNC2(FUNC11(&patch, diff, 0));
	FUNC2(FUNC12(&actual, patch));

	FUNC0(expected, actual.ptr);

	FUNC2(FUNC7(index, "untimely.txt"));
	FUNC2(FUNC9(index));

	FUNC14(
		"19dd32dfb1520a64e5bbaae8dce6ef423dfa2f13",
		NULL,
		&opts,
		expected);

	FUNC4(&actual);
	FUNC10(patch);
	FUNC5(diff);
	FUNC8(index);
}