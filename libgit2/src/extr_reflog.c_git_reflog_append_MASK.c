#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
struct TYPE_10__ {char* msg; int /*<<< orphan*/  const oid_cur; int /*<<< orphan*/  const oid_old; int /*<<< orphan*/  committer; } ;
typedef  TYPE_1__ git_reflog_entry ;
struct TYPE_11__ {int /*<<< orphan*/  entries; } ;
typedef  TYPE_2__ git_reflog ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_OID_HEX_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 char* FUNC3 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 size_t FUNC10 (char const*) ; 

int FUNC11(git_reflog *reflog, const git_oid *new_oid, const git_signature *committer, const char *msg)
{
	const git_reflog_entry *previous;
	git_reflog_entry *entry;

	FUNC1(reflog && new_oid && committer);

	entry = FUNC2(1, sizeof(git_reflog_entry));
	FUNC0(entry);

	if ((FUNC8(&entry->committer, committer)) < 0)
		goto cleanup;

	if (msg != NULL) {
		size_t i, msglen = FUNC10(msg);

		if ((entry->msg = FUNC3(msg, msglen)) == NULL)
			goto cleanup;

		/*
		 * Replace all newlines with spaces, except for
		 * the final trailing newline.
		 */
		for (i = 0; i < msglen; i++)
			if (entry->msg[i] == '\n')
				entry->msg[i] = ' ';
	}

	previous = FUNC7(reflog, 0);

	if (previous == NULL)
		FUNC5(&entry->oid_old, GIT_OID_HEX_ZERO);
	else
		FUNC4(&entry->oid_old, &previous->oid_cur);

	FUNC4(&entry->oid_cur, new_oid);

	if (FUNC9(&reflog->entries, entry) < 0)
		goto cleanup;

	return 0;

cleanup:
	FUNC6(entry);
	return -1;
}