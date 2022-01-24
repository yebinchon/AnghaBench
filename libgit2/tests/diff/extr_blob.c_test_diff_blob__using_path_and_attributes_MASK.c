#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_11__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  git_blob ;
struct TYPE_13__ {int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; int /*<<< orphan*/  files_binary; int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
struct TYPE_12__ {int /*<<< orphan*/  flags; scalar_t__ context_lines; } ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 size_t GIT_DELTA_MODIFIED ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNMODIFIED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_7__ expected ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char const*,int,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 TYPE_2__ opts ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,char const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC19 (char const*) ; 

void FUNC20(void)
{
	git_config *cfg;
	git_blob *bin, *nonbin;
	git_oid oid;
	const char *nonbin_content = "Hello from the root\n";
	const char *bin_content =
		"0123456789\n\x01\x02\x03\x04\x05\x06\x07\x08\x09\x00\n0123456789\n";
	size_t bin_len = 33;
	const char *changed;
	git_patch *p;
	git_buf buf = GIT_BUF_INIT;

	/* set up custom diff drivers and 'diff' attribute mappings for them */

	FUNC5(FUNC17(&cfg, g_repo));
	FUNC5(FUNC11(cfg, "diff.iam_binary.binary", 1));
	FUNC5(FUNC11(cfg, "diff.iam_text.binary", 0));
	FUNC5(FUNC12(
		cfg, "diff.iam_alphactx.xfuncname", "^[A-Za-z].*$"));
	FUNC5(FUNC11(cfg, "diff.iam_textalpha.binary", 0));
	FUNC5(FUNC12(
		cfg, "diff.iam_textalpha.xfuncname", "^[A-Za-z].*$"));
	FUNC5(FUNC12(
		cfg, "diff.iam_numctx.funcname", "^[0-9][0-9]*"));
	FUNC5(FUNC11(cfg, "diff.iam_textnum.binary", 0));
	FUNC5(FUNC12(
		cfg, "diff.iam_textnum.funcname", "^[0-9][0-9]*"));
	FUNC10(cfg);

	FUNC4(
		"attr/.gitattributes",
		"\n\n# test_diff_blob__using_path_and_attributes extra\n\n"
		"*.binary  diff=iam_binary\n"
		"*.textary diff=iam_text\n"
		"*.alphary diff=iam_alphactx\n"
		"*.textalphary diff=iam_textalpha\n"
		"*.textnumary diff=iam_textnum\n"
		"*.numary  diff=iam_numctx\n\n");

	opts.context_lines = 0;
	opts.flags |= GIT_DIFF_INCLUDE_UNMODIFIED;

	FUNC5(FUNC13(&oid, "45141a79", 8));
	FUNC5(FUNC7(&nonbin, g_repo, &oid, 8));
	/* 20b: "Hello from the root\n" */

	FUNC5(FUNC13(&oid, "b435cd56", 8));
	FUNC5(FUNC7(&bin, g_repo, &oid, 8));
	/* 33b: "0123456789\n\x01\x02\x03\x04\x05\x06\x07\x08\x09\n0123456789\n" */

	/* non-binary to reference content */

	FUNC18(nonbin, NULL, nonbin_content, 0, NULL);
	FUNC0(&expected);
	FUNC2(0, expected.files_binary);

	/* binary to reference content */

	FUNC18(bin, NULL, bin_content, bin_len, NULL);
	FUNC0(&expected);
	FUNC2(1, expected.files_binary);

	/* add some text */

	changed = "Hello from the root\nMore lines\nAnd more\nGo here\n";

	FUNC18(nonbin, NULL, changed, 0, NULL);
	FUNC1(1, 3, 0, 3, 0, &expected);

	FUNC18(nonbin, "foo/bar.binary", changed, 0, NULL);
	FUNC2(1, expected.files);
	FUNC2(1, expected.file_status[GIT_DELTA_MODIFIED]);
	FUNC2(1, expected.files_binary);
	FUNC2(0, expected.hunks);
	FUNC2(0, expected.lines);

	FUNC18(nonbin, "foo/bar.textary", changed, 0, NULL);
	FUNC1(1, 3, 0, 3, 0, &expected);

	FUNC18(nonbin, "foo/bar.alphary", changed, 0, NULL);
	FUNC1(1, 3, 0, 3, 0, &expected);

	FUNC5(FUNC15(
		&p, nonbin, "zzz.normal", changed, FUNC19(changed), NULL, &opts));
	FUNC5(FUNC16(&buf, p));
	FUNC3(
		"diff --git a/zzz.normal b/zzz.normal\n"
		"index 45141a7..75b0dbb 100644\n"
		"--- a/zzz.normal\n"
		"+++ b/zzz.normal\n"
		"@@ -1,0 +2,3 @@ Hello from the root\n"
		"+More lines\n"
		"+And more\n"
		"+Go here\n", buf.ptr);
	FUNC8(&buf);
	FUNC14(p);

	FUNC5(FUNC15(
		&p, nonbin, "zzz.binary", changed, FUNC19(changed), NULL, &opts));
	FUNC5(FUNC16(&buf, p));
	FUNC3(
		"diff --git a/zzz.binary b/zzz.binary\n"
		"index 45141a7..75b0dbb 100644\n"
		"Binary files a/zzz.binary and b/zzz.binary differ\n", buf.ptr);
	FUNC8(&buf);
	FUNC14(p);

	FUNC5(FUNC15(
		&p, nonbin, "zzz.alphary", changed, FUNC19(changed), NULL, &opts));
	FUNC5(FUNC16(&buf, p));
	FUNC3(
		"diff --git a/zzz.alphary b/zzz.alphary\n"
		"index 45141a7..75b0dbb 100644\n"
		"--- a/zzz.alphary\n"
		"+++ b/zzz.alphary\n"
		"@@ -1,0 +2,3 @@ Hello from the root\n"
		"+More lines\n"
		"+And more\n"
		"+Go here\n", buf.ptr);
	FUNC8(&buf);
	FUNC14(p);

	FUNC5(FUNC15(
		&p, nonbin, "zzz.numary", changed, FUNC19(changed), NULL, &opts));
	FUNC5(FUNC16(&buf, p));
	FUNC3(
		"diff --git a/zzz.numary b/zzz.numary\n"
		"index 45141a7..75b0dbb 100644\n"
		"--- a/zzz.numary\n"
		"+++ b/zzz.numary\n"
		"@@ -1,0 +2,3 @@\n"
		"+More lines\n"
		"+And more\n"
		"+Go here\n", buf.ptr);
	FUNC8(&buf);
	FUNC14(p);

	/* "0123456789\n\x01\x02\x03\x04\x05\x06\x07\x08\x09\x00\n0123456789\n"
	 * 33 bytes
	 */

	changed = "0123456789\n\x01\x02\x03\x04\x05\x06\x07\x08\x09\x00\nreplace a line\n";

	FUNC5(FUNC15(
		&p, bin, "zzz.normal", changed, 37, NULL, &opts));
	FUNC5(FUNC16(&buf, p));
	FUNC3(
		"diff --git a/zzz.normal b/zzz.normal\n"
		"index b435cd5..1604519 100644\n"
		"Binary files a/zzz.normal and b/zzz.normal differ\n", buf.ptr);
	FUNC8(&buf);
	FUNC14(p);

	FUNC5(FUNC15(
		&p, bin, "zzz.textary", changed, 37, NULL, &opts));
	FUNC5(FUNC16(&buf, p));
	FUNC3(
		"diff --git a/zzz.textary b/zzz.textary\n"
		"index b435cd5..1604519 100644\n"
		"--- a/zzz.textary\n"
		"+++ b/zzz.textary\n"
		"@@ -3 +3 @@\n"
		"-0123456789\n"
		"+replace a line\n", buf.ptr);
	FUNC8(&buf);
	FUNC14(p);

	FUNC5(FUNC15(
		&p, bin, "zzz.textalphary", changed, 37, NULL, &opts));
	FUNC5(FUNC16(&buf, p));
	FUNC3(
		"diff --git a/zzz.textalphary b/zzz.textalphary\n"
		"index b435cd5..1604519 100644\n"
		"--- a/zzz.textalphary\n"
		"+++ b/zzz.textalphary\n"
		"@@ -3 +3 @@\n"
		"-0123456789\n"
		"+replace a line\n", buf.ptr);
	FUNC8(&buf);
	FUNC14(p);

	FUNC5(FUNC15(
		&p, bin, "zzz.textnumary", changed, 37, NULL, &opts));
	FUNC5(FUNC16(&buf, p));
	FUNC3(
		"diff --git a/zzz.textnumary b/zzz.textnumary\n"
		"index b435cd5..1604519 100644\n"
		"--- a/zzz.textnumary\n"
		"+++ b/zzz.textnumary\n"
		"@@ -3 +3 @@ 0123456789\n"
		"-0123456789\n"
		"+replace a line\n", buf.ptr);
	FUNC8(&buf);
	FUNC14(p);

	FUNC9(&buf);
	FUNC6(nonbin);
	FUNC6(bin);
}