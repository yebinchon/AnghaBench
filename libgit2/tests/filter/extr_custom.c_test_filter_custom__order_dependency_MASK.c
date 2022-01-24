#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  git_blob ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC16(void)
{
	git_index *index;
	git_blob *blob;
	git_buf buf = { 0 };

	/* so if ident and reverse are used together, an interesting thing
	 * happens - a reversed "$Id$" string is no longer going to trigger
	 * ident correctly.  When checking out, the filters should be applied
	 * in order CLRF, then ident, then reverse, so ident expansion should
	 * work correctly.  On check in, the content should be reversed, then
	 * ident, then CRLF filtered.  Let's make sure that works...
	 */

	FUNC2(
		"empty_standard_repo/.gitattributes",
		"hero.*.rev-ident text ident prereverse eol=lf\n");

	FUNC2(
		"empty_standard_repo/hero.1.rev-ident",
		"This is a test\n$Id$\nHave fun!\n");

	FUNC2(
		"empty_standard_repo/hero.2.rev-ident",
		"Another test\n$dI$\nCrazy!\n");

	FUNC3(FUNC15(&index, g_repo));
	FUNC3(FUNC11(index, "hero.1.rev-ident"));
	FUNC3(FUNC11(index, "hero.2.rev-ident"));
	FUNC4(NULL, g_repo, NULL, 0, "Filter chains\n");
	FUNC12(index);

	FUNC3(FUNC8(&blob, g_repo,
		& FUNC13(index, "hero.1.rev-ident", 0)->id));
	FUNC1(
		"\n!nuf evaH\n$dI$\ntset a si sihT", FUNC9(blob));
	FUNC3(FUNC5(&buf, blob, "hero.1.rev-ident", NULL));
	/* no expansion because id was reversed at checkin and now at ident
	 * time, reverse is not applied yet */
	FUNC1(
		"This is a test\n$Id$\nHave fun!\n", buf.ptr);
	FUNC6(blob);

	FUNC3(FUNC8(&blob, g_repo,
		& FUNC13(index, "hero.2.rev-ident", 0)->id));
	FUNC1(
		"\n!yzarC\n$Id$\ntset rehtonA", FUNC9(blob));
	FUNC3(FUNC5(&buf, blob, "hero.2.rev-ident", NULL));
	/* expansion because reverse was applied at checkin and at ident time,
	 * reverse is not applied yet */
	FUNC1(
		"Another test\n$ 59001fe193103b1016b27027c0c827d036fd0ac8 :dI$\nCrazy!\n", buf.ptr);
	FUNC0(0, FUNC14(
		FUNC7(blob), "8ca0df630d728c0c72072b6101b301391ef10095"));
	FUNC6(blob);

	FUNC10(&buf);
}