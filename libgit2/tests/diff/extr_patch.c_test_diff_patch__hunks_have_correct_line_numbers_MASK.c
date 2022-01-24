#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_diff_options ;
struct TYPE_13__ {int old_lineno; int new_lineno; int content_offset; int /*<<< orphan*/  content_len; int /*<<< orphan*/  content; scalar_t__ origin; } ;
typedef  TYPE_1__ git_diff_line ;
struct TYPE_14__ {scalar_t__ new_lines; scalar_t__ new_start; scalar_t__ old_lines; scalar_t__ old_start; } ;
typedef  TYPE_2__ git_diff_hunk ;
struct TYPE_15__ {scalar_t__ status; } ;
typedef  TYPE_3__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_16__ {char const* ptr; } ;
typedef  TYPE_4__ git_buf ;

/* Variables and functions */
 TYPE_4__ GIT_BUF_INIT ; 
 int GIT_DELTA_MODIFIED ; 
 int GIT_DIFF_LINE_ADDITION ; 
 int GIT_DIFF_LINE_CONTEXT ; 
 int GIT_DIFF_LINE_DELETION ; 
 int GIT_DIFF_LINE_DEL_EOFNL ; 
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__ const**,size_t*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__ const**,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

void FUNC26(void)
{
	git_config *cfg;
	git_tree *head;
	git_diff_options opt = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff;
	git_patch *patch;
	const git_diff_delta *delta;
	const git_diff_hunk *hunk;
	const git_diff_line *line;
	size_t hunklen;
	git_buf old_content = GIT_BUF_INIT, actual = GIT_BUF_INIT;
	const char *new_content = "The Song of Seven Cities\n------------------------\n\nI WAS Lord of Cities very sumptuously builded.\nSeven roaring Cities paid me tribute from afar.\nIvory their outposts were--the guardrooms of them gilded,\nAnd garrisoned with Amazons invincible in war.\n\nThis is some new text;\nNot as good as the old text;\nBut here it is.\n\nSo they warred and trafficked only yesterday, my Cities.\nTo-day there is no mark or mound of where my Cities stood.\nFor the River rose at midnight and it washed away my Cities.\nThey are evened with Atlantis and the towns before the Flood.\n\nRain on rain-gorged channels raised the water-levels round them,\nFreshet backed on freshet swelled and swept their world from sight,\nTill the emboldened floods linked arms and, flashing forward, drowned them--\nDrowned my Seven Cities and their peoples in one night!\n\nLow among the alders lie their derelict foundations,\nThe beams wherein they trusted and the plinths whereon they built--\nMy rulers and their treasure and their unborn populations,\nDead, destroyed, aborted, and defiled with mud and silt!\n\nAnother replacement;\nBreaking up the poem;\nGenerating some hunks.\n\nTo the sound of trumpets shall their seed restore my Cities\nWealthy and well-weaponed, that once more may I behold\nAll the world go softly when it walks before my Cities,\nAnd the horses and the chariots fleeing from them as of old!\n\n  -- Rudyard Kipling\n";

	g_repo = FUNC5("renames");

	FUNC3(FUNC10(&cfg));
	FUNC24(g_repo, cfg);
	FUNC9(cfg);

	FUNC23(g_repo, false);

	FUNC3(
		FUNC14(&old_content, "renames/songof7cities.txt"));

	FUNC4("renames/songof7cities.txt", new_content);

	FUNC3(FUNC22(&head, g_repo));

	FUNC3(FUNC13(&diff, g_repo, head, &opt));

	FUNC1(1, (int)FUNC12(diff));

	FUNC3(FUNC16(&patch, diff, 0));
	FUNC0((delta = FUNC17(patch)) != NULL);

	FUNC1(GIT_DELTA_MODIFIED, (int)delta->status);
	FUNC1(2, (int)FUNC20(patch));

	/* check hunk 0 */

	FUNC3(
		FUNC18(&hunk, &hunklen, patch, 0));

	FUNC1(18, (int)hunklen);

	FUNC1(6, (int)hunk->old_start);
	FUNC1(15, (int)hunk->old_lines);
	FUNC1(6, (int)hunk->new_start);
	FUNC1(9, (int)hunk->new_lines);

	FUNC1(18, (int)FUNC21(patch, 0));

	FUNC3(FUNC19(&line, patch, 0, 0));
	FUNC1(GIT_DIFF_LINE_CONTEXT, (int)line->origin);
	FUNC3(FUNC8(&actual, line->content, line->content_len));
	FUNC2("Ivory their outposts were--the guardrooms of them gilded,\n", actual.ptr);
	FUNC1(6, line->old_lineno);
	FUNC1(6, line->new_lineno);
	FUNC1(-1, line->content_offset);

	FUNC3(FUNC19(&line, patch, 0, 3));
	FUNC1(GIT_DIFF_LINE_DELETION, (int)line->origin);
	FUNC3(FUNC8(&actual, line->content, line->content_len));
	FUNC2("All the world went softly when it walked before my Cities--\n", actual.ptr);
	FUNC1(9, line->old_lineno);
	FUNC1(-1, line->new_lineno);
	FUNC1(252, line->content_offset);

	FUNC3(FUNC19(&line, patch, 0, 12));
	FUNC1(GIT_DIFF_LINE_ADDITION, (int)line->origin);
	FUNC3(FUNC8(&actual, line->content, line->content_len));
	FUNC2("This is some new text;\n", actual.ptr);
	FUNC1(-1, line->old_lineno);
	FUNC1(9, line->new_lineno);
	FUNC1(252, line->content_offset);

	/* check hunk 1 */

	FUNC3(FUNC18(&hunk, &hunklen, patch, 1));

	FUNC1(18, (int)hunklen);

	FUNC1(31, (int)hunk->old_start);
	FUNC1(15, (int)hunk->old_lines);
	FUNC1(25, (int)hunk->new_start);
	FUNC1(9, (int)hunk->new_lines);

	FUNC1(18, (int)FUNC21(patch, 1));

	FUNC3(FUNC19(&line, patch, 1, 0));
	FUNC1(GIT_DIFF_LINE_CONTEXT, (int)line->origin);
	FUNC3(FUNC8(&actual, line->content, line->content_len));
	FUNC2("My rulers and their treasure and their unborn populations,\n", actual.ptr);
	FUNC1(31, line->old_lineno);
	FUNC1(25, line->new_lineno);
	FUNC1(-1, line->content_offset);

	FUNC3(FUNC19(&line, patch, 1, 3));
	FUNC1(GIT_DIFF_LINE_DELETION, (int)line->origin);
	FUNC3(FUNC8(&actual, line->content, line->content_len));
	FUNC2("The Daughters of the Palace whom they cherished in my Cities,\n", actual.ptr);
	FUNC1(34, line->old_lineno);
	FUNC1(-1, line->new_lineno);
	FUNC1(1468, line->content_offset);

	FUNC3(FUNC19(&line, patch, 1, 12));
	FUNC1(GIT_DIFF_LINE_ADDITION, (int)line->origin);
	FUNC3(FUNC8(&actual, line->content, line->content_len));
	FUNC2("Another replacement;\n", actual.ptr);
	FUNC1(-1, line->old_lineno);
	FUNC1(28, line->new_lineno);
	FUNC1(1066, line->content_offset);

	FUNC15(patch);
	FUNC11(diff);

	/* Let's check line numbers when there is no newline */

	FUNC7(&old_content);
	FUNC4("renames/songof7cities.txt", old_content.ptr);

	FUNC3(FUNC13(&diff, g_repo, head, &opt));

	FUNC1(1, (int)FUNC12(diff));

	FUNC3(FUNC16(&patch, diff, 0));
	FUNC0((delta = FUNC17(patch)) != NULL);

	FUNC1(GIT_DELTA_MODIFIED, (int)delta->status);
	FUNC1(1, (int)FUNC20(patch));

	/* check hunk 0 */

	FUNC3(FUNC18(&hunk, &hunklen, patch, 0));

	FUNC1(6, (int)hunklen);

	FUNC1(46, (int)hunk->old_start);
	FUNC1(4, (int)hunk->old_lines);
	FUNC1(46, (int)hunk->new_start);
	FUNC1(4, (int)hunk->new_lines);

	FUNC1(6, (int)FUNC21(patch, 0));

	FUNC3(FUNC19(&line, patch, 0, 1));
	FUNC1(GIT_DIFF_LINE_CONTEXT, (int)line->origin);
	FUNC3(FUNC8(&actual, line->content, line->content_len));
	FUNC2("And the horses and the chariots fleeing from them as of old!\n", actual.ptr);
	FUNC1(47, line->old_lineno);
	FUNC1(47, line->new_lineno);

	FUNC3(FUNC19(&line, patch, 0, 2));
	FUNC1(GIT_DIFF_LINE_CONTEXT, (int)line->origin);
	FUNC3(FUNC8(&actual, line->content, line->content_len));
	FUNC2("\n", actual.ptr);
	FUNC1(48, line->old_lineno);
	FUNC1(48, line->new_lineno);

	FUNC3(FUNC19(&line, patch, 0, 3));
	FUNC1(GIT_DIFF_LINE_DELETION, (int)line->origin);
	FUNC3(FUNC8(&actual, line->content, line->content_len));
	FUNC2("  -- Rudyard Kipling\n", actual.ptr);
	FUNC1(49, line->old_lineno);
	FUNC1(-1, line->new_lineno);

	FUNC3(FUNC19(&line, patch, 0, 4));
	FUNC1(GIT_DIFF_LINE_ADDITION, (int)line->origin);
	FUNC3(FUNC8(&actual, line->content, line->content_len));
	FUNC2("  -- Rudyard Kipling", actual.ptr);
	FUNC1(-1, line->old_lineno);
	FUNC1(49, line->new_lineno);

	FUNC3(FUNC19(&line, patch, 0, 5));
	FUNC1(GIT_DIFF_LINE_DEL_EOFNL, (int)line->origin);
	FUNC3(FUNC8(&actual, line->content, line->content_len));
	FUNC2("\n\\ No newline at end of file\n", actual.ptr);
	FUNC1(-1, line->old_lineno);
	FUNC1(49, line->new_lineno);

	FUNC15(patch);
	FUNC11(diff);

	FUNC6(&actual);
	FUNC6(&old_content);
	FUNC25(head);
}