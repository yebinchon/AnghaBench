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
typedef  int /*<<< orphan*/  unpack_tree_opts ;
struct unpack_trees_options {int head_idx; int merge; int update; int /*<<< orphan*/  fn; int /*<<< orphan*/  dst_index; int /*<<< orphan*/  src_index; } ;
struct tree_desc {scalar_t__ buffer; } ;
struct tree {int dummy; } ;
struct strbuf {scalar_t__ buf; } ;
struct repository {int /*<<< orphan*/  index; } ;
struct object_id {int dummy; } ;
struct replay_opts {int have_squash_onto; struct object_id squash_onto; } ;
struct lock_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  empty_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_LOCK ; 
 struct lock_file LOCK_INIT ; 
 int /*<<< orphan*/  LOCK_REPORT_ON_ERROR ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  UPDATE_REFS_MSG_ON_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct replay_opts*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*,struct tree_desc*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (scalar_t__,struct object_id*) ; 
 scalar_t__ FUNC8 (char const) ; 
 int /*<<< orphan*/  FUNC9 (struct unpack_trees_options*,int /*<<< orphan*/ ,int) ; 
 char* FUNC10 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC11 (struct object_id*,struct object_id*) ; 
 int /*<<< orphan*/  oneway_merge ; 
 struct tree* FUNC12 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC13 (struct repository*,int /*<<< orphan*/ ,struct tree*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct replay_opts*,char*,char*,int,char const*) ; 
 scalar_t__ FUNC16 (struct repository*,struct lock_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct repository*) ; 
 int /*<<< orphan*/  FUNC18 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC19 (struct unpack_trees_options*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct strbuf*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC21 (struct strbuf*) ; 
 scalar_t__ FUNC22 (char const*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char const*,int) ; 
 TYPE_1__* the_hash_algo ; 
 scalar_t__ FUNC24 (int,struct tree_desc*,struct unpack_trees_options*) ; 
 int FUNC25 (int /*<<< orphan*/ ,char*,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,struct lock_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC28(struct repository *r,
		    const char *name, int len,
		    struct replay_opts *opts)
{
	struct strbuf ref_name = STRBUF_INIT;
	struct object_id oid;
	struct lock_file lock = LOCK_INIT;
	struct tree_desc desc;
	struct tree *tree;
	struct unpack_trees_options unpack_tree_opts;
	int ret = 0;

	if (FUNC16(r, &lock, LOCK_REPORT_ON_ERROR) < 0)
		return -1;

	if (len == 10 && !FUNC23("[new root]", name, len)) {
		if (!opts->have_squash_onto) {
			const char *hex;
			if (FUNC2("", 0, the_hash_algo->empty_tree,
					NULL, &opts->squash_onto,
					NULL, NULL))
				return FUNC3(FUNC0("writing fake root commit"));
			opts->have_squash_onto = 1;
			hex = FUNC10(&opts->squash_onto);
			if (FUNC27(hex, FUNC22(hex),
					  FUNC14(), 0))
				return FUNC3(FUNC0("writing squash-onto"));
		}
		FUNC11(&oid, &opts->squash_onto);
	} else {
		int i;

		/* Determine the length of the label */
		for (i = 0; i < len; i++)
			if (FUNC8(name[i]))
				break;
		len = i;

		FUNC20(&ref_name, "refs/rewritten/%.*s", len, name);
		if (FUNC7(ref_name.buf, &oid) &&
		    FUNC7(ref_name.buf + FUNC22("refs/rewritten/"), &oid)) {
			FUNC3(FUNC0("could not read '%s'"), ref_name.buf);
			FUNC18(&lock);
			FUNC21(&ref_name);
			return -1;
		}
	}

	FUNC9(&unpack_tree_opts, 0, sizeof(unpack_tree_opts));
	FUNC19(&unpack_tree_opts, "reset");
	unpack_tree_opts.head_idx = 1;
	unpack_tree_opts.src_index = r->index;
	unpack_tree_opts.dst_index = r->index;
	unpack_tree_opts.fn = oneway_merge;
	unpack_tree_opts.merge = 1;
	unpack_tree_opts.update = 1;

	if (FUNC17(r)) {
		FUNC18(&lock);
		FUNC21(&ref_name);
		return FUNC4(FUNC0(FUNC1(opts)));
	}

	if (!FUNC5(r, &desc, &oid)) {
		FUNC3(FUNC0("failed to find tree of %s"), FUNC10(&oid));
		FUNC18(&lock);
		FUNC6((void *)desc.buffer);
		FUNC21(&ref_name);
		return -1;
	}

	if (FUNC24(1, &desc, &unpack_tree_opts)) {
		FUNC18(&lock);
		FUNC6((void *)desc.buffer);
		FUNC21(&ref_name);
		return -1;
	}

	tree = FUNC12(&oid);
	FUNC13(r, r->index, tree);

	if (FUNC26(r->index, &lock, COMMIT_LOCK) < 0)
		ret = FUNC3(FUNC0("could not write index"));
	FUNC6((void *)desc.buffer);

	if (!ret)
		ret = FUNC25(FUNC15(opts, "reset", "'%.*s'",
						len, name), "HEAD", &oid,
				 NULL, 0, UPDATE_REFS_MSG_ON_ERR);

	FUNC21(&ref_name);
	return ret;
}