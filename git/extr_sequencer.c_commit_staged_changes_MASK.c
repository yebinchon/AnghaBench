#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct todo_list {int dummy; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct repository {int dummy; } ;
struct TYPE_3__ {char* buf; int len; } ;
struct replay_opts {scalar_t__ current_fixup_count; TYPE_1__ current_fixups; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 unsigned int ALLOW_EMPTY ; 
 unsigned int AMEND_MSG ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 unsigned int CLEANUP_MSG ; 
 unsigned int EDIT_MSG ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (char const*) ; 
 char* FUNC4 (struct commit*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,struct object_id*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct object_id*) ; 
 char* FUNC7 (struct repository*) ; 
 char const* FUNC8 (struct repository*) ; 
 int /*<<< orphan*/  FUNC9 (struct repository*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct repository*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct object_id*,struct object_id*) ; 
 scalar_t__ FUNC13 (struct repository*,struct commit**) ; 
 int /*<<< orphan*/  FUNC14 (struct todo_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 char const* FUNC16 () ; 
 char const* FUNC17 () ; 
 char const* FUNC18 () ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 char const* FUNC20 () ; 
 char const* FUNC21 () ; 
 scalar_t__ FUNC22 (struct repository*,int /*<<< orphan*/ *,struct replay_opts*,unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC24 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int) ; 
 int FUNC27 (char const*) ; 
 int /*<<< orphan*/  FUNC28 (char const*,char*) ; 
 scalar_t__ FUNC29 (char const*) ; 
 int /*<<< orphan*/  FUNC30 (struct commit*,char const*) ; 
 scalar_t__ FUNC31 (char const*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC32(struct repository *r,
				 struct replay_opts *opts,
				 struct todo_list *todo_list)
{
	unsigned int flags = ALLOW_EMPTY | EDIT_MSG;
	unsigned int final_fixup = 0, is_clean;

	if (FUNC10(r, 1))
		return FUNC2(FUNC1("cannot rebase: You have unstaged changes."));

	is_clean = !FUNC9(r, 0);

	if (FUNC3(FUNC16())) {
		struct strbuf rev = STRBUF_INIT;
		struct object_id head, to_amend;

		if (FUNC5("HEAD", &head))
			return FUNC2(FUNC1("cannot amend non-existing commit"));
		if (!FUNC15(&rev, FUNC16(), 0))
			return FUNC2(FUNC1("invalid file: '%s'"), FUNC16());
		if (FUNC6(rev.buf, &to_amend))
			return FUNC2(FUNC1("invalid contents: '%s'"),
				FUNC16());
		if (!is_clean && !FUNC12(&head, &to_amend))
			return FUNC2(FUNC1("\nYou have uncommitted changes in your "
				       "working tree. Please, commit them\n"
				       "first and then run 'git rebase "
				       "--continue' again."));
		/*
		 * When skipping a failed fixup/squash, we need to edit the
		 * commit message, the current fixup list and count, and if it
		 * was the last fixup/squash in the chain, we need to clean up
		 * the commit message and if there was a squash, let the user
		 * edit it.
		 */
		if (!is_clean || !opts->current_fixup_count)
			; /* this is not the final fixup */
		else if (!FUNC12(&head, &to_amend) ||
			 !FUNC3(FUNC21())) {
			/* was a final fixup or squash done manually? */
			if (!FUNC11(FUNC14(todo_list, 0))) {
				FUNC29(FUNC18());
				FUNC29(FUNC20());
				FUNC29(FUNC17());
				FUNC25(&opts->current_fixups);
				opts->current_fixup_count = 0;
			}
		} else {
			/* we are in a fixup/squash chain */
			const char *p = opts->current_fixups.buf;
			int len = opts->current_fixups.len;

			opts->current_fixup_count--;
			if (!len)
				FUNC0("Incorrect current_fixups:\n%s", p);
			while (len && p[len - 1] != '\n')
				len--;
			FUNC26(&opts->current_fixups, len);
			if (FUNC31(p, len, FUNC17(),
					  0) < 0)
				return FUNC2(FUNC1("could not write file: '%s'"),
					     FUNC17());

			/*
			 * If a fixup/squash in a fixup/squash chain failed, the
			 * commit message is already correct, no need to commit
			 * it again.
			 *
			 * Only if it is the final command in the fixup/squash
			 * chain, and only if the chain is longer than a single
			 * fixup/squash command (which was just skipped), do we
			 * actually need to re-commit with a cleaned up commit
			 * message.
			 */
			if (opts->current_fixup_count > 0 &&
			    !FUNC11(FUNC14(todo_list, 0))) {
				final_fixup = 1;
				/*
				 * If there was not a single "squash" in the
				 * chain, we only need to clean up the commit
				 * message, no need to bother the user with
				 * opening the commit message in the editor.
				 */
				if (!FUNC23(p, "squash ") &&
				    !FUNC28(p, "\nsquash "))
					flags = (flags & ~EDIT_MSG) | CLEANUP_MSG;
			} else if (FUNC11(FUNC14(todo_list, 0))) {
				/*
				 * We need to update the squash message to skip
				 * the latest commit message.
				 */
				struct commit *commit;
				const char *path = FUNC20();

				if (FUNC13(r, &commit) ||
				    !(p = FUNC4(commit, NULL)) ||
				    FUNC31(p, FUNC27(p), path, 0)) {
					FUNC30(commit, p);
					return FUNC2(FUNC1("could not write file: "
						       "'%s'"), path);
				}
				FUNC30(commit, p);
			}
		}

		FUNC24(&rev);
		flags |= AMEND_MSG;
	}

	if (is_clean) {
		const char *cherry_pick_head = FUNC7(r);

		if (FUNC3(cherry_pick_head) && FUNC29(cherry_pick_head))
			return FUNC2(FUNC1("could not remove CHERRY_PICK_HEAD"));
		if (!final_fixup)
			return 0;
	}

	if (FUNC22(r, final_fixup ? NULL : FUNC19(),
			   opts, flags))
		return FUNC2(FUNC1("could not commit staged changes."));
	FUNC29(FUNC16());
	FUNC29(FUNC8(r));
	if (final_fixup) {
		FUNC29(FUNC18());
		FUNC29(FUNC20());
	}
	if (opts->current_fixup_count > 0) {
		/*
		 * Whether final fixup or not, we just cleaned up the commit
		 * message...
		 */
		FUNC29(FUNC17());
		FUNC25(&opts->current_fixups);
		opts->current_fixup_count = 0;
	}
	return 0;
}