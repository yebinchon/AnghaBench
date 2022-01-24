#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tree {int dummy; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct merge_options {int repo; int detect_renames; scalar_t__ detect_directory_renames; int rename_limit; scalar_t__ rename_score; int show_rename_progress; scalar_t__ xdl_opts; scalar_t__ recursive_variant; int verbosity; int buffer_output; TYPE_2__* priv; TYPE_1__ obuf; scalar_t__ branch2; scalar_t__ branch1; } ;
struct TYPE_4__ {int /*<<< orphan*/  df_conflict_file_set; } ;

/* Variables and functions */
 int DIFF_DETECT_COPY ; 
 scalar_t__ MAX_SCORE ; 
 scalar_t__ MERGE_DIRECTORY_RENAMES_NONE ; 
 scalar_t__ MERGE_DIRECTORY_RENAMES_TRUE ; 
 scalar_t__ MERGE_VARIANT_NORMAL ; 
 scalar_t__ MERGE_VARIANT_THEIRS ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct merge_options*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,struct tree*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct merge_options *opt, struct tree *head)
{
	struct strbuf sb = STRBUF_INIT;

	/* Sanity checks on opt */
	FUNC1(opt->repo);

	FUNC1(opt->branch1 && opt->branch2);

	FUNC1(opt->detect_renames >= -1 &&
	       opt->detect_renames <= DIFF_DETECT_COPY);
	FUNC1(opt->detect_directory_renames >= MERGE_DIRECTORY_RENAMES_NONE &&
	       opt->detect_directory_renames <= MERGE_DIRECTORY_RENAMES_TRUE);
	FUNC1(opt->rename_limit >= -1);
	FUNC1(opt->rename_score >= 0 && opt->rename_score <= MAX_SCORE);
	FUNC1(opt->show_rename_progress >= 0 && opt->show_rename_progress <= 1);

	FUNC1(opt->xdl_opts >= 0);
	FUNC1(opt->recursive_variant >= MERGE_VARIANT_NORMAL &&
	       opt->recursive_variant <= MERGE_VARIANT_THEIRS);

	FUNC1(opt->verbosity >= 0 && opt->verbosity <= 5);
	FUNC1(opt->buffer_output <= 2);
	FUNC1(opt->obuf.len == 0);

	FUNC1(opt->priv == NULL);

	/* Sanity check on repo state; index must match head */
	if (FUNC3(opt->repo, head, &sb)) {
		FUNC2(opt, FUNC0("Your local changes to the following files would be overwritten by merge:\n  %s"),
		    sb.buf);
		FUNC4(&sb);
		return -1;
	}

	opt->priv = FUNC6(1, sizeof(*opt->priv));
	FUNC5(&opt->priv->df_conflict_file_set, 1);
	return 0;
}