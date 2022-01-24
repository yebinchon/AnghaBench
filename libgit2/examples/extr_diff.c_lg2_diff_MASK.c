#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; } ;
struct opts {int member_2; int member_3; char* member_9; scalar_t__ no_index; char* treeish1; char* treeish2; scalar_t__ cache; int output; scalar_t__ color; int /*<<< orphan*/  format; TYPE_1__ findopts; int /*<<< orphan*/  diffopts; int /*<<< orphan*/ * member_8; int /*<<< orphan*/ * member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 scalar_t__ CACHE_NONE ; 
 scalar_t__ CACHE_NORMAL ; 
 int GIT_DIFF_FIND_ALL ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_FORMAT_PATCH ; 
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int OUTPUT_DIFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  color_printer ; 
 int /*<<< orphan*/ * colors ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,struct opts*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct opts*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct opts*,int,char**) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 

int FUNC15(git_repository *repo, int argc, char *argv[])
{
	git_tree *t1 = NULL, *t2 = NULL;
	git_diff *diff;

	struct opts o = {
		GIT_DIFF_OPTIONS_INIT, GIT_DIFF_FIND_OPTIONS_INIT,
		-1, -1, 0, 0, GIT_DIFF_FORMAT_PATCH, NULL, NULL, "."
	};

	FUNC13(&o, argc, argv);

	/**
	 * Possible argument patterns:
	 *
	 *  * &lt;sha1&gt; &lt;sha2&gt;
	 *  * &lt;sha1&gt; --cached
	 *  * &lt;sha1&gt;
	 *  * --cached
	 *  * --nocache (don't use index data in diff at all)
	 *  * --no-index &lt;file1&gt; &lt;file2&gt;
	 *  * nothing
	 *
	 * Currently ranged arguments like &lt;sha1&gt;..&lt;sha2&gt; and &lt;sha1&gt;...&lt;sha2&gt;
	 * are not supported in this example
	 */

	if (o.no_index >= 0) {
		FUNC1(&diff, &o);
	} else {
		if (o.treeish1)
			FUNC14(&t1, repo, o.treeish1);
		if (o.treeish2)
			FUNC14(&t2, repo, o.treeish2);

		if (t1 && t2)
			FUNC0(
				FUNC9(&diff, repo, t1, t2, &o.diffopts),
				"diff trees", NULL);
		else if (o.cache != CACHE_NORMAL) {
			if (!t1)
				FUNC14(&t1, repo, "HEAD");

			if (o.cache == CACHE_NONE)
				FUNC0(
					FUNC10(&diff, repo, t1, &o.diffopts),
					"diff tree to working directory", NULL);
			else
				FUNC0(
					FUNC8(&diff, repo, t1, NULL, &o.diffopts),
					"diff tree to index", NULL);
		}
		else if (t1)
			FUNC0(
				FUNC11(&diff, repo, t1, &o.diffopts),
				"diff tree to working directory", NULL);
		else
			FUNC0(
				FUNC6(&diff, repo, NULL, &o.diffopts),
				"diff index to working directory", NULL);

		/** Apply rename and copy detection if requested. */

		if ((o.findopts.flags & GIT_DIFF_FIND_ALL) != 0)
			FUNC0(
				FUNC4(diff, &o.findopts),
				"finding renames and copies", NULL);
	}

	/** Generate simple output using libgit2 display helper. */

	if (!o.output)
		o.output = OUTPUT_DIFF;

	if (o.output != OUTPUT_DIFF)
		FUNC2(diff, &o);

	if ((o.output & OUTPUT_DIFF) != 0) {
		if (o.color >= 0)
			FUNC3(colors[0], stdout);

		FUNC0(
			FUNC7(diff, o.format, color_printer, &o.color),
			"displaying diff", NULL);

		if (o.color >= 0)
			FUNC3(colors[0], stdout);
	}

	/** Cleanup before exiting. */
	FUNC5(diff);
	FUNC12(t1);
	FUNC12(t2);

	return 0;
}