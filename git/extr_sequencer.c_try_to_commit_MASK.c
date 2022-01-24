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
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct repository {int /*<<< orphan*/  index_file; int /*<<< orphan*/  index; } ;
struct replay_opts {int default_msg_cleanup; int /*<<< orphan*/  gpg_sign; int /*<<< orphan*/  explicit_cleanup; scalar_t__ record_origin; scalar_t__ signoff; } ;
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit_extra_header {int dummy; } ;
struct commit {int /*<<< orphan*/  parents; } ;
typedef  enum commit_msg_cleanup_mode { ____Placeholder_commit_msg_cleanup_mode } commit_msg_cleanup_mode ;
struct TYPE_2__ {int /*<<< orphan*/  empty_tree; } ;

/* Variables and functions */
 unsigned int ALLOW_EMPTY ; 
 unsigned int AMEND_MSG ; 
 unsigned int CLEANUP_MSG ; 
 int COMMIT_MSG_CLEANUP_ALL ; 
 int COMMIT_MSG_CLEANUP_NONE ; 
 int COMMIT_MSG_CLEANUP_SPACE ; 
 unsigned int CREATE_ROOT_COMMIT ; 
 unsigned int EDIT_MSG ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,struct commit*,struct object_id*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*,struct commit_list*,struct object_id*,char const*,int /*<<< orphan*/ ,struct commit_extra_header*) ; 
 struct commit_list* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const**) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct commit_extra_header*) ; 
 char* FUNC11 (char const*) ; 
 char* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct commit*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 char* FUNC16 (struct commit*,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC17 (struct strbuf*,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC19 (struct repository*,struct commit**) ; 
 struct commit_extra_header* FUNC20 (struct commit*,char const**) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC23 (struct repository*,struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC24 (struct strbuf*,char const*) ; 
 scalar_t__ FUNC25 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC27 (struct strbuf*,int) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC28 (struct commit*,char const*) ; 
 scalar_t__ FUNC29 (struct commit*,struct object_id*,int /*<<< orphan*/ ,struct strbuf*,struct strbuf*) ; 
 scalar_t__ FUNC30 (struct object_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC31(struct repository *r,
			 struct strbuf *msg, const char *author,
			 struct replay_opts *opts, unsigned int flags,
			 struct object_id *oid)
{
	struct object_id tree;
	struct commit *current_head = NULL;
	struct commit_list *parents = NULL;
	struct commit_extra_header *extra = NULL;
	struct strbuf err = STRBUF_INIT;
	struct strbuf commit_msg = STRBUF_INIT;
	char *amend_author = NULL;
	const char *hook_commit = NULL;
	enum commit_msg_cleanup_mode cleanup;
	int res = 0;

	if (FUNC19(r, &current_head))
		return -1;

	if (flags & AMEND_MSG) {
		const char *exclude_gpgsig[] = { "gpgsig", NULL };
		const char *out_enc = FUNC12();
		const char *message = FUNC16(current_head, NULL,
						      out_enc);

		if (!msg) {
			const char *orig_message = NULL;

			FUNC7(message, &orig_message);
			msg = &commit_msg;
			FUNC24(msg, orig_message);
			hook_commit = "HEAD";
		}
		author = amend_author = FUNC11(message);
		FUNC28(current_head, message);
		if (!author) {
			res = FUNC5(FUNC0("unable to parse commit author"));
			goto out;
		}
		parents = FUNC4(current_head->parents);
		extra = FUNC20(current_head, exclude_gpgsig);
	} else if (current_head &&
		   (!(flags & CREATE_ROOT_COMMIT) || (flags & AMEND_MSG))) {
		FUNC1(current_head, &parents);
	}

	if (FUNC30(&tree, r->index, r->index_file, 0, NULL)) {
		res = FUNC5(FUNC0("git write-tree failed to write a tree"));
		goto out;
	}

	if (!(flags & ALLOW_EMPTY) && FUNC18(current_head ?
					    FUNC13(current_head) :
					    the_hash_algo->empty_tree, &tree)) {
		res = 1; /* run 'git commit' to display error message */
		goto out;
	}

	if (FUNC8("prepare-commit-msg")) {
		res = FUNC23(r, msg, hook_commit);
		if (res)
			goto out;
		if (FUNC25(&commit_msg, FUNC15(),
				     2048) < 0) {
			res = FUNC6(FUNC0("unable to read commit message "
					      "from '%s'"),
					    FUNC15());
			goto out;
		}
		msg = &commit_msg;
	}

	if (flags & CLEANUP_MSG)
		cleanup = COMMIT_MSG_CLEANUP_ALL;
	else if ((opts->signoff || opts->record_origin) &&
		 !opts->explicit_cleanup)
		cleanup = COMMIT_MSG_CLEANUP_SPACE;
	else
		cleanup = opts->default_msg_cleanup;

	if (cleanup != COMMIT_MSG_CLEANUP_NONE)
		FUNC27(msg, cleanup == COMMIT_MSG_CLEANUP_ALL);
	if ((flags & EDIT_MSG) && FUNC17(msg, cleanup)) {
		res = 1; /* run 'git commit' to display error message */
		goto out;
	}

	FUNC21();

	if (FUNC3(msg->buf, msg->len, &tree, parents,
				 oid, author, opts->gpg_sign, extra)) {
		res = FUNC5(FUNC0("failed to write commit object"));
		goto out;
	}

	if (FUNC29(current_head, oid,
				    FUNC14("GIT_REFLOG_ACTION"), msg, &err)) {
		res = FUNC5("%s", err.buf);
		goto out;
	}

	FUNC22(0, r->index_file, "post-commit", NULL);
	if (flags & AMEND_MSG)
		FUNC2(r, current_head, oid);

out:
	FUNC10(extra);
	FUNC26(&err);
	FUNC26(&commit_msg);
	FUNC9(amend_author);

	return res;
}