#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
struct diff_data {TYPE_3__ new_binary_base85; TYPE_3__ old_binary_base85; int /*<<< orphan*/  new_path; int /*<<< orphan*/  old_path; int /*<<< orphan*/  new_binary_inflatedlen; int /*<<< orphan*/  new_binary_type; int /*<<< orphan*/  new_id; int /*<<< orphan*/  old_binary_inflatedlen; int /*<<< orphan*/  old_binary_type; int /*<<< orphan*/  old_id; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  id_abbrev; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int GIT_DIFF_BINARY_DELTA ; 
 int GIT_DIFF_FORCE_BINARY ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int GIT_DIFF_SHOW_BINARY ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  binary_cb ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  file_cb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct diff_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hunk_cb ; 
 int /*<<< orphan*/  line_cb ; 
 int /*<<< orphan*/  repo ; 

void FUNC15(void)
{
	git_index *index;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_blob *old_blob, *new_blob;
	git_oid old_id, new_id;
	struct diff_data diff_data = {0};

	opts.flags = GIT_DIFF_SHOW_BINARY | GIT_DIFF_FORCE_BINARY;
	opts.id_abbrev = GIT_OID_HEXSZ;

	repo = FUNC5("renames");
	FUNC4(FUNC14(&index, repo));

	FUNC3("renames/untimely.txt", "Oh that crazy Kipling!\r\n");
	FUNC4(FUNC11(index, "untimely.txt"));
	FUNC4(FUNC12(index));

	FUNC13(&old_id, "9a69d960ae94b060f56c2a8702545e2bb1abb935");
	FUNC13(&new_id, "1111d4f11f4b35bf6759e0fb714fe09731ef0840");

	FUNC4(FUNC8(&old_blob, repo, &old_id));
	FUNC4(FUNC8(&new_blob, repo, &new_id));

	FUNC4(FUNC10(old_blob,
		"untimely.txt", new_blob, "untimely.txt", &opts,
		file_cb, binary_cb, hunk_cb, line_cb, &diff_data));

	FUNC2("untimely.txt", diff_data.old_path);
	FUNC1(&old_id, &diff_data.old_id);
	FUNC0(GIT_DIFF_BINARY_DELTA, diff_data.old_binary_type);
	FUNC0(7, diff_data.old_binary_inflatedlen);
	FUNC2("c%18D`@*{63ljhg(E~C7",
		diff_data.old_binary_base85.ptr);

	FUNC2("untimely.txt", diff_data.new_path);
	FUNC1(&new_id, &diff_data.new_id);
	FUNC0(GIT_DIFF_BINARY_DELTA, diff_data.new_binary_type);
	FUNC0(32, diff_data.new_binary_inflatedlen);
	FUNC2("c%1vf+QYWt3zLL@hC)e3Vu?a>QDRl4f_G*?PG(-ZA}<#J$+QbW",
		diff_data.new_binary_base85.ptr);

	FUNC7(old_blob);
	FUNC7(new_blob);

	FUNC6(diff_data.old_path);
	FUNC6(diff_data.new_path);

	FUNC9(&diff_data.old_binary_base85);
	FUNC9(&diff_data.new_binary_base85);
}